CREATE VIEW SalesDetailsWithPaymentStatus AS
SELECT 
    S.SaleID,
    C.Nama AS CustomerName,
    E.Nama AS EmployeeName,
    Cd.Model AS CarModel,
    SD.Jumlah AS Quantity,
    SD.Subtotal AS SubtotalAmount,
    P.JumlahBayar AS AmountPaid,
    CASE
        WHEN P.JumlahBayar >= S.TotalHarga THEN 'Fully Paid'
        ELSE 'Pending'
    END AS PaymentStatus
FROM Sales S
JOIN SalesDetails SD ON S.SaleID = SD.SaleID
JOIN Customers C ON S.CustomerID = C.CustomerID
JOIN Employees E ON S.EmployeeID = E.EmployeeID
JOIN Cars Cd ON SD.CarID = Cd.CarID
JOIN Payments P ON S.SaleID = P.SaleID;