CREATE VIEW CustomersMostExpensivePurchase AS
SELECT 
    C.Nama AS CustomerName,
    Cd.Model AS CarModel,
    MAX(Cd.Harga) AS MostExpensiveCarPrice
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN SalesDetails SD ON S.SaleID = SD.SaleID
JOIN Cars Cd ON SD.CarID = Cd.CarID
GROUP BY C.Nama, Cd.Model;