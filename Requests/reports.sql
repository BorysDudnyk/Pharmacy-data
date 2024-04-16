-- Звіт про продажі за кожен день
SELECT Purchase_date, SUM(Purchase_price) AS TotalSales
FROM Clients
GROUP BY Purchase_date;

-- Звіт про постачальників із найвищими оптовими цінами
SELECT Supplier_Company, Wholesale_price
FROM Provider_
ORDER BY Wholesale_price DESC;

-- Звіт про популярні ліки за кількістю продажів
SELECT m.The_name_of_the_drug, COUNT(c.Check_number) AS SalesCount
FROM Medicine m
JOIN Clients c ON m.ID = c.ID
GROUP BY m.The_name_of_the_drug
ORDER BY SalesCount DESC;