SET IDENTITY_INSERT Clients ON;
INSERT INTO Clients (ID, Client_name, Date_of_birth, Contact_number, Email)
VALUES
    (1, 'Michael Brown', '1985-06-15', '123-456-7890', 'mbrown@example.com'),
    (2, 'Sara White', '1990-09-22', '234-567-8901', 'swhite@example.com'),
    (3, 'David Green', '1978-03-30', '345-678-9012', 'dgreen@example.com');
SET IDENTITY_INSERT Clients OFF;