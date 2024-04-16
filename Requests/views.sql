-- Вигляд для виведення інформації про ліки разом із їхнім виробником та постачальником
CREATE VIEW MedicineInfo AS
SELECT m.ID, m.The_name_of_the_drug, m.Price, p.Supplier_Company, ph.Pharmacy_name
FROM Medicine m
JOIN Provider_ p ON m.ID = p.ID
JOIN Pharmacy ph ON m.ID = ph.ID;

-- Вигляд для підрахунку загальної вартості замовлень за кожен день
CREATE VIEW DailyOrderTotal AS
SELECT Purchase_date, SUM(Purchase_price) AS TotalOrderAmount
FROM Clients
GROUP BY Purchase_date;