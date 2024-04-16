-- Обмеження унікальності на назву ліків у таблиці Medicine
ALTER TABLE Medicine
ADD CONSTRAINT uc_Medicine_Name UNIQUE (The_name_of_the_drug);

-- Обмеження перевірки на позитивну ціну в таблиці Medicine
ALTER TABLE Medicine
ADD CONSTRAINT ck_Medicine_Price CHECK (Price > 0);

-- Обмеження зовнішнього ключа на таблицю Working_staff
ALTER TABLE Working_staff
ADD CONSTRAINT fk_Working_staff_Pharmacy
FOREIGN KEY (Pharmacy_addresses)
REFERENCES Pharmacy (Pharmacy_addresses);