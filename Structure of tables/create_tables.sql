CREATE TABLE Medicine (
    ID INT NOT NULL IDENTITY PRIMARY KEY,
    The_name_of_the_drug TEXT NOT NULL,
    Price INT NOT NULL,
    Date_of_manufacture DATE,
    Expiration_date DATE
);

CREATE TABLE Provider_ (
    ID INT NOT NULL IDENTITY PRIMARY KEY,
    Supplier_Company VARCHAR(20) NOT NULL,
    Wholesale_price INT NOT NULL,
    Estimated_delivery_time VARCHAR(25) NOT NULL,
    Timetable VARCHAR(12) NOT NULL
);

CREATE TABLE Pharmacy (
    ID INT NOT NULL IDENTITY PRIMARY KEY,
    Pharmacy_name VARCHAR(35) NOT NULL,
    Pharmacy_addresses VARCHAR(30) NOT NULL,
    Issue_number INT NOT NULL,
    Timetable VARCHAR(12) NOT NULL
);

CREATE TABLE Working_staff (
    ID INT NOT NULL IDENTITY PRIMARY KEY,
    Workers_name VARCHAR(30) NOT NULL,
    Pharmacy_addresses VARCHAR(25) NOT NULL,
    Work_Shifts INT NOT NULL,
    Timetable VARCHAR(12) NOT NULL
);

CREATE TABLE Clients (
    ID INT NOT NULL IDENTITY PRIMARY KEY,
    Check_number INT NOT NULL,
    Purchase_date DATE NOT NULL,
    Purchase_price INT NOT NULL,
    Department_Number INT NOT NULL
);

CREATE TABLE Order_ (
    ID INT NOT NULL PRIMARY KEY,
    Check_number INT NOT NULL,
    Invoice_number INT NOT NULL,
    Order_amount INT NOT NULL
);