CREATE VIEW SalesPendingPayment AS
SELECT 
    S.SaleID,
    C.Nama AS CustomerName,
    E.Nama AS EmployeeName,
    Cd.Model AS CarModel,
    S.TotalHarga AS TotalSalePrice,
    P.JumlahBayar AS AmountPaid,
    (S.TotalHarga - P.JumlahBayar) AS RemainingAmount
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN Employees E ON S.EmployeeID = E.EmployeeID
JOIN SalesDetails SD ON S.SaleID = SD.SaleID
JOIN Cars Cd ON SD.CarID = Cd.CarID
JOIN Payments P ON S.SaleID = P.SaleID
WHERE P.JumlahBayar < S.TotalHarga;