-- Вибірка ліків з терміном придатності, що минув
SELECT * FROM Medicine
WHERE Expiration_date < GETDATE();

-- Вибірка постачальників з високою оптовою ціною
SELECT * FROM Provider_
WHERE Wholesale_price > 50;

-- Об'єднання таблиць Medicine та Pharmacy для відображення ліків у певних аптеках
SELECT m.The_name_of_the_drug, p.Pharmacy_name
FROM Medicine m
JOIN Pharmacy p ON m.ID = p.ID;

-- Вибірка персоналу, який працює в аптеках з певною назвою
SELECT w.Workers_name, p.Pharmacy_name
FROM Working_staff w
JOIN Pharmacy p ON w.Pharmacy_addresses = p.Pharmacy_addresses;