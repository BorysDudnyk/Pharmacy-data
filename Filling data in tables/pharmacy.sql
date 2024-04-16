SET IDENTITY_INSERT Pharmacy ON;
INSERT INTO Pharmacy (ID, Pharmacy_name, Pharmacy_addresses, Contact_number, Email)
VALUES
    (1, 'Pharmacy One', '111 Pharmacy Blvd', '111-222-3333', 'pharmacyone@example.com'),
    (2, 'Pharmacy Two', '222 Pharmacy Ave', '222-333-4444', 'pharmacytwo@example.com'),
    (3, 'Pharmacy Three', '333 Pharmacy Road', '333-444-5555', 'pharmacythree@example.com');
SET IDENTITY_INSERT Pharmacy OFF;
