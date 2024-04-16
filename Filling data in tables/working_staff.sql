SET IDENTITY_INSERT Working_staff ON;
INSERT INTO Working_staff (ID, Staff_name, Position, Pharmacy_addresses, Contact_number)
VALUES
    (1, 'John Doe', 'Pharmacist', '111 Pharmacy Blvd', '111-222-3333'),
    (2, 'Jane Smith', 'Pharmacy Technician', '222 Pharmacy Ave', '222-333-4444'),
    (3, 'Alice Johnson', 'Pharmacist', '333 Pharmacy Road', '333-444-5555');
SET IDENTITY_INSERT Working_staff OFF;