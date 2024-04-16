-- Процедура для оновлення ціни ліків
CREATE PROCEDURE UpdateMedicinePrice
    @MedicineID INT,
    @NewPrice INT
AS
BEGIN
    UPDATE Medicine
    SET Price = @NewPrice
    WHERE ID = @MedicineID;
END;

-- Функція для розрахунку середньої ціни ліків у певній аптеці
CREATE FUNCTION AvgMedicinePriceInPharmacy(@PharmacyID INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @AvgPrice FLOAT;
    SELECT @AvgPrice = AVG(m.Price)
    FROM Medicine m
    JOIN Pharmacy p ON m.ID = p.ID
    WHERE p.ID = @PharmacyID;
    RETURN @AvgPrice;
END;