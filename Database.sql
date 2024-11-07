Create database CarRentalManagement
Use CarRentalManagement


Create table Cities(
CityID int primary key, 
CityName nvarchar(255) 
);

Create table Stations(
StationID int primary key,
StationName nvarchar(255),
CityID int foreign key references Cities(CityID)
);

Create table Vehicles(
VehicleID int primary key,
VehicleType nvarchar(50),
Brand nvarchar(50),
Model nvarchar(50),
Year date,
RentalPricePerHour decimal(10,2),
RentalPricePerDay decimal(10,2),
Status NVARCHAR(50) CHECK (Status IN ('Available', 'Rented', 'Maintenance')),
Mileage INT,
StationID int foreign key references Stations(StationID)
); 

create table Customers(
CustomerID int primary key,
FullName nvarchar(100),
Phone nvarchar(15),
Email nvarchar(255),
DriverLicense nvarchar(50)
);

Create table RentalContracts(
ContractID int primary key, 
CustomerID int foreign key references Customers(CustomerID),
StationID int foreign key references Stations(StationID),
PickupDateTime datetime,
ReturnDateTime datetime,
DepositAmount decimal(10,2),
TotalAmount DECIMAL(10, 2),
Status NVARCHAR(50) CHECK (Status IN ('Active', 'Completed', 'Cancelled'))
);

Create table RentalContractVehicles(
ContractVehicleID int primary key,
ContractID int foreign key references RentalContracts(ContractID),
VehicleID int foreign key references Vehicles(VehicleID),
IsWithDriver NVARCHAR(50) CHECK (IsWithDriver IN ('Yes', 'No')),
RentalPrice DECIMAL(10, 2),
PickupLocation NVARCHAR(250),
ReturnLocation NVARCHAR(250)
);