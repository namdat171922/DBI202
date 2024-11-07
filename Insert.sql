use CarRentalManagement 

--Thành phố
go
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (1, N'HaNoi')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (2, N'HoChiMinh')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (3, N'CanTho')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (4, N'ThanhHoa')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (5, N'HaTinh')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (6, N'HaiPhong')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (7, N'HoaBinh')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (8, N'Saigon')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (9, N'TayNguyen')
INSERT [dbo].[Cities]([CityID],[CityName])VALUES (10, N'CaMau')

--Trạm
go
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (1,N'Tram1',1)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (2,N'Tram2',6)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (3,N'Tram3',4)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (4,N'Tram4',8)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (5,N'Tram5',10)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (6,N'Tram6',5)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (7,N'Tram7',9)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (8,N'Tram8',3)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (9,N'Tram9',7)
insert [dbo].[Stations]([StationID],[StationName],[CityID]) values (10,N'Tram10',2)

--Xe
go
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (1, '4-seater', 'Toyota', 'Vios', '2020-03-15', 100000, 800000, 1, 'Available', 25000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (2, '5-seater', 'Honda', 'Civic', '2019-07-20', 150000, 1200000, 2, 'Available', 15000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (3, '7-seater', 'Ford', 'Everest', '2021-04-12', 200000, 1500000, 3, 'Rented', 30000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (4, '16-seater', 'Mercedes', 'Sprinter', '2022-11-08', 300000, 2500000, 4, 'Available', 5000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (5, 'SUV', 'Nissan', 'X-Trail', '2020-02-25', 250000, 2000000, 5, 'Maintenance', 40000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (6, 'Truck', 'Isuzu', 'D-Max', '2018-09-10', 180000, 1500000, 6, 'Available', 35000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (7, 'Sports Car', 'Mazda', 'MX-5', '2021-06-05', 350000, 3000000, 7, 'Rented', 12000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (8, '4-seater', 'Kia', 'Cerato', '2019-08-22', 120000, 900000, 8, 'Available', 20000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (9, '5-seater', 'Hyundai', 'Elantra', '2020-10-13', 140000, 1100000, 9, 'Available', 28000)
insert [dbo].[Vehicles]([VehicleID],[VehicleType],[Brand],[Model],[Year],[RentalPricePerHour],[RentalPricePerDay],[StationID],[Status],[Mileage]) values (10, '7-seater', 'Toyota', 'Fortuner', '2022-01-27', 280000, 2300000, 10, 'Available', 22000)

--Khách Hàng
go
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (1,'Nguyen Van A', '0123456789', 'a@example.com', 'DL123456')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (2,'Tran Thi B', '0987654321', 'b@example.com', 'DL234567')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (3,'Le Van C', '0112233445', 'c@example.com', 'DL345678')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (4,'Pham Thi D', '0223344556', 'd@example.com', 'DL456789')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (5,'Nguyen Van E', '0334455667', 'e@example.com', 'DL567890')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (6,'Tran Thi F', '0445566778', 'f@example.com', 'DL678901')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (7,'Le Van G', '0556677889', 'g@example.com', 'DL789012')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (8,'Pham Thi H', '0667788990', 'h@example.com', 'DL890123')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (9,'Nguyen Ven I', '0778899001', 'i@example.com', 'DL901234')
insert [dbo].[Customers]([CustomerID],[FullName],[Phone],[Email],[DriverLicense]) values (10,'Tran Thi J', '0889900112', 'j@example.com', 'DL012345')

--Hop dong
go
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (1, 1, 1, '2023-11-01 10:00:00', '2023-11-05 10:00:00', 500000, 2500000, 'Active')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (2, 2, 1, '2023-11-02 11:00:00', '2023-11-06 11:00:00', 600000, 3500000, 'Active')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (3, 3, 2, '2023-11-03 12:00:00', '2023-11-07 12:00:00', 700000, 3000000, 'Completed')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (4, 4, 2, '2023-11-04 13:00:00', '2023-11-08 13:00:00', 800000, 2000000, 'Cancelled')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (5, 5, 3, '2023-11-05 14:00:00', '2023-11-09 14:00:00', 900000, 4000000, 'Active')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (6, 6, 3, '2023-11-06 15:00:00', '2023-11-10 15:00:00', 1000000, 1500000, 'Active')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (7, 7, 4, '2023-11-07 16:00:00', '2023-11-11 16:00:00', 1100000, 2750000, 'Active')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (8, 8, 4, '2023-11-08 17:00:00', '2023-11-12 17:00:00', 1200000, 3250000, 'Completed')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (9, 9, 5, '2023-11-09 18:00:00', '2023-11-13 18:00:00', 1300000, 2500000, 'Active')
insert [dbo].[RentalContracts](ContractID, CustomerID, StationID, PickupDateTime, ReturnDateTime, DepositAmount, TotalAmount, Status) VALUES (10, 10, 5, '2023-11-10 19:00:00', '2023-11-14 19:00:00', 1400000, 3750000, 'Completed')

--Hop dong xe
go
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (1, 1, 1, 'No', 1200000, 'Tram1', 'Tram2')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (2, 2, 2, 'Yes', 1500000, 'Tram2', 'Tram3')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (3, 3, 3, 'No', 900000, 'Tram3', 'Tram4')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (4, 4, 4, 'No', 1300000, 'Tram4', 'Tram5')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (5, 5, 5, 'Yes', 1700000, 'Tram5', 'Tram6')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (6, 6, 6, 'No', 1600000, 'Tram6', 'Tram7')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (7, 7, 7, 'Yes', 1400000, 'Tram7', 'Tram8')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (8, 8, 8, 'No', 1100000, 'Tram8', 'Tram9')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (9, 9, 9, 'No', 800000, 'Tram9', 'Tram10')
insert [dbo].[RentalContractVehicles]([ContractVehicleID],[ContractID],[VehicleID],[IsWithDriver],[RentalPrice],[PickupLocation],[ReturnLocation]) values (10, 10, 10, 'Yes', 1450000, 'Tram10', 'Tram1')