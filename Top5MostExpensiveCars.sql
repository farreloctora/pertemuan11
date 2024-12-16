CREATE VIEW Top5MostExpensiveCars AS
SELECT TOP 5
    Model AS CarModel,
    Tahun AS Year,
    Harga AS Price
FROM Cars
WHERE Ketersediaan = 1
ORDER BY Harga DESC;