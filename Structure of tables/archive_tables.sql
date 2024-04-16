-- Таблиця для архівування старих замовлень
CREATE TABLE ArchivedOrders (
    OrderID INT,
    Check_number INT,
    Invoice_number INT,
    Order_amount INT,
    OrderDate DATE
);

-- Архівування старих записів із таблиці Order_
INSERT INTO ArchivedOrders (OrderID, Check_number, Invoice_number, Order_amount, OrderDate)
SELECT ID, Check_number, Invoice_number, Order_amount, Purchase_date
FROM Order_
WHERE Purchase_date < DATEADD(YEAR, -1, GETDATE());