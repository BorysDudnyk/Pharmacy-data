-- Таблиця для ведення історії замовлень
CREATE TABLE OrderHistory (
    OrderID INT NOT NULL,
    Check_number INT NOT NULL,
    Invoice_number INT NOT NULL,
    Order_amount INT NOT NULL,
    OrderDate DATE NOT NULL,
    PRIMARY KEY (OrderID)
);

-- Приклад наповнення таблиці OrderHistory
INSERT INTO OrderHistory (OrderID, Check_number, Invoice_number, Order_amount, OrderDate)
VALUES (1, 34, 1, 345, '2022-09-03'),
       (2, 45, 2, 346, '2022-09-04'),
       (3, 37, 3, 276, '2022-09-05');