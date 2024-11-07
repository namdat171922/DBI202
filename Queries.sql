-- 1. ghi ra danh sách các stations ở trong cities 
SELECT distinct  c.CityID, c.CityName, s.StationID, s.StationName
FROM Cities c
JOIN Stations s ON c.CityID = s.CityID
order by CityID;

--2. ghi ra những xe đang trong trạng thái 'available' 
Select v.VehicleID, v.VehicleType, v.Brand, v.Model, v.Year, v.RentalPricePerHour, v.RentalPricePerDay, s.StationName, v.Status
FROM Vehicles v
JOIN Stations s ON v.StationID = s.StationID
WHERE v.Status = 'Available';

--3. ghi ra những hợp đồng với đối tượng khách hàng cụ thể 
SELECT rc.ContractID, c.FullName, c.Phone,c.Email,c.DriverLicense, rc.PickupDateTime, rc.ReturnDateTime, rc.TotalAmount, rc.Status
FROM RentalContracts rc
JOIN Customers c ON rc.CustomerID = c.CustomerID
WHERE c.CustomerID = [Enter CutomerID] AND rc.Status = 'Active';

--4. Tính thu nhập
SELECT v.VehicleID, v.Brand, v.Model, SUM(rcv.RentalPrice) AS TotalIncome
FROM RentalContractVehicles rcv
JOIN Vehicles v ON rcv.VehicleID = v.VehicleID
GROUP BY v.VehicleID, v.Brand, v.Model;

--5. Lịch sử xe cho thuê 
SELECT rc.ContractID, c.FullName AS CustomerName, rc.PickupDateTime, rc.ReturnDateTime, rc.TotalAmount, rc.Status
FROM RentalContracts rc
JOIN RentalContractVehicles rcv ON rc.ContractID = rcv.ContractID
JOIN Customers c ON rc.CustomerID = c.CustomerID
WHERE rcv.VehicleID = [EnterVehicleID]
ORDER BY rc.PickupDateTime DESC;

--6. Liệt kê danh sách xe đang bảo trì 
SELECT VehicleID, VehicleType, Brand, Model, Year, Mileage, StationID, status 
FROM Vehicles
WHERE Status = 'Maintenance';

--7. giá thuê cho từng loại xe 
SELECT VehicleType, AVG(RentalPricePerHour) AS AvgRentalPricePerHour, AVG(RentalPricePerDay) AS AvgRentalPricePerDay
FROM Vehicles
GROUP BY VehicleType;

--8. truy ra tất cả nhuững hợp đồng đã hoàn thành 
SELECT rc.ContractID, c.FullName AS CustomerName, rc.PickupDateTime, rc.ReturnDateTime, rc.TotalAmount
FROM RentalContracts rc
JOIN Customers c ON rc.CustomerID = c.CustomerID
WHERE rc.StationID = [EnterStationID] AND rc.Status = 'Completed';




