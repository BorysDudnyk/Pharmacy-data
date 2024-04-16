-- Експорт даних з таблиці Medicine у CSV-файл
BULK EXPORT DATA FROM Medicine TO 'path/to/exported_medicine.csv';

-- Імпорт даних із CSV-файлу у таблицю Pharmacy
BULK INSERT Pharmacy
FROM 'path/to/import_pharmacy.csv'
WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');