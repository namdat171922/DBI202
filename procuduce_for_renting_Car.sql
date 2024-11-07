CREATE PROCEDURE RentCar
    @CustomerID INT,
    @StationID INT,
    @PickupDateTime DATETIME,
    @ReturnDateTime DATETIME,
    @DepositAmount DECIMAL(10, 2),
    @TotalAmount DECIMAL(10, 2),
    @VehicleID INT,
    @IsWithDriver NVARCHAR(50),
    @RentalPrice DECIMAL(10, 2),
    @PickupLocation NVARCHAR(250),
    @ReturnLocation NVARCHAR(250),
    @ContractStatus NVARCHAR(50) = 'Active'
AS
BEGIN
    -- Start a transaction to ensure data consistency
    BEGIN TRANSACTION;

    BEGIN TRY
        -- Step 1: Insert a new rental contract
        DECLARE @NewContractID INT;

        INSERT INTO RentalContracts (CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status)
        VALUES (@CustomerID, @StationID, @PickupDateTime, @ReturnDateTime, @DepositAmount, @TotalAmount, @ContractStatus);

        -- Retrieve the new ContractID
        SET @NewContractID = SCOPE_IDENTITY();

        -- Step 2: Insert the associated vehicle into RentalContractVehicles
        INSERT INTO RentalContractVehicles (ContractID, VehicleID, IsWithDriver, RentalPrice, PickupLocation, ReturnLocation)
        VALUES (@NewContractID, @VehicleID, @IsWithDriver, @RentalPrice, @PickupLocation, @ReturnLocation);

        -- Step 3: Update the status of the rented vehicle to 'Rented'
        UPDATE Vehicles
        SET Status = 'Rented'
        WHERE VehicleID = @VehicleID;

        -- Commit the transaction if all operations are successful
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback the transaction if there is any error
        ROLLBACK TRANSACTION;

        -- Optionally, you can raise an error or handle it as needed
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END;
GO
