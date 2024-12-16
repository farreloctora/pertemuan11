CREATE VIEW SalesSummary AS
SELECT 
    S.SaleID,
    C.Nama AS CustomerName,
    E.Nama AS EmployeeName,
    Cd.Model AS CarModel,
    S.TotalHarga AS TotalSalePrice,
    CASE
        WHEN S.Status = 1 THEN 'Paid'
        ELSE 'Unpaid'
    END AS PaymentStatus
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN Employees E ON S.EmployeeID = E.EmployeeID
JOIN SalesDetails SD ON S.SaleID = SD.SaleID
JOIN Cars Cd ON SD.CarID = Cd.CarID;