-- Індекс для таблиці Medicine за назвою ліків
CREATE INDEX idx_Medicine_Name
ON Medicine (The_name_of_the_drug);

-- Індекс для таблиці Pharmacy за адресою аптеки
CREATE INDEX idx_Pharmacy_Address
ON Pharmacy (Pharmacy_addresses);