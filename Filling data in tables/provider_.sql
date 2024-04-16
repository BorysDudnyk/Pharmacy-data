SET IDENTITY_INSERT Provider_ ON;
INSERT INTO Provider_ (ID, Supplier_Company, Supplier_address, Contact_number, Email)
VALUES
    (1, 'ABC Pharma', '123 Pharma Street', '123-456-7890', 'contact@abcpharma.com'),
    (2, 'XYZ Meds', '456 Med Road', '234-567-8901', 'info@xyzmeds.com'),
    (3, 'MediSupplier', '789 Medi Lane', '345-678-9012', 'support@medisupplier.com');
SET IDENTITY_INSERT Provider_ OFF;