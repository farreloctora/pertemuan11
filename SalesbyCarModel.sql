CREATE VIEW SalesByCarModel AS
SELECT 
    Cd.Model AS CarModel,
    COUNT(SD.SaleID) AS SalesCount,
    SUM(SD.Subtotal) AS TotalSalesAmount
FROM SalesDetails SD
JOIN Cars Cd ON SD.CarID = Cd.CarID
GROUP BY Cd.Model;