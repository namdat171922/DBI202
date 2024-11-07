CREATE TRIGGER UpdateCarStatusOnRental
ON RentalContracts
AFTER INSERT
AS
BEGIN
    -- Update the vehicle status to 'Rented' after a new rental contract is created
    UPDATE Vehicles
    SET Status = 'Rented'
    FROM Vehicles v
    INNER JOIN RentalContractVehicles rcv ON v.VehicleID = rcv.VehicleID
    INNER JOIN INSERTED i ON i.ContractID = rcv.ContractID;
END;
GO
