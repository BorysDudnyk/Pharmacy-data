-- Створення унікального індексу для назви ліків
CREATE UNIQUE INDEX idx_drug_name ON Medicine(The_name_of_the_drug);

-- Додавання обмеження перевірки до таблиці Pharmacy
ALTER TABLE Pharmacy
ADD CONSTRAINT chk_issue_number
CHECK (Issue_number BETWEEN 1 AND 100);

-- Додавання зовнішнього ключа до таблиці Working_staff
ALTER TABLE Working_staff
ADD CONSTRAINT fk_pharmacy_addresses
FOREIGN KEY (Pharmacy_addresses) REFERENCES Pharmacy(Pharmacy_addresses);