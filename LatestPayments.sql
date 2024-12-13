CREATE VIEW LatestPayments AS
SELECT 
    P.PaymentID,
    S.SaleID,
    P.TanggalBayar AS PaymentDate,
    P.JumlahBayar AS AmountPaid
FROM Payments P
JOIN Sales S ON P.SaleID = S.SaleID
WHERE P.PaymentID IN (
    SELECT MAX(PaymentID) 
    FROM Payments 
    GROUP BY SaleID
);