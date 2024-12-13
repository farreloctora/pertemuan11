CREATE VIEW SalesByEmployee AS
SELECT 
    E.Nama AS EmployeeName,
    COUNT(S.SaleID) AS NumberOfSales,
    SUM(S.TotalHarga) AS TotalSalesAmount
FROM Sales S
JOIN Employees E ON S.EmployeeID = E.EmployeeID
GROUP BY E.Nama;