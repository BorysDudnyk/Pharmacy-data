-- Оновлення ціни ліків
UPDATE Medicine
SET Price = 80
WHERE ID = 1;

-- Видалення ліків із певним ID
DELETE FROM Medicine
WHERE ID = 9;

-- Оновлення оптової ціни постачальника
UPDATE Provider_
SET Wholesale_price = 60
WHERE ID = 2;

-- Видалення постачальника з певним ID
DELETE FROM Provider_
WHERE ID = 8;

-- Оновлення графіка роботи аптеки
UPDATE Pharmacy
SET Timetable = '9:00-20:00'
WHERE ID = 1;

-- Видалення аптеки за певним ID
DELETE FROM Pharmacy
WHERE ID = 7;