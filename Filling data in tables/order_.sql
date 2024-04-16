SET IDENTITY_INSERT Order_ ON;
INSERT INTO Order_ (ID, Check_number, Invoice_number, Order_amount, Purchase_date)
VALUES
    (1, 101, 1001, 500, '2023-04-01'),
    (2, 102, 1002, 300, '2023-04-02'),
    (3, 103, 1003, 700, '2023-04-03');
SET IDENTITY_INSERT Order_ OFF;