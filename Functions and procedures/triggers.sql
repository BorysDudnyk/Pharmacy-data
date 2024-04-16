-- Тригер для відстеження змін ціни ліків
CREATE TRIGGER trg_Medicine_PriceUpdate
ON Medicine
AFTER UPDATE
AS
BEGIN
    IF (UPDATE(Price))
    BEGIN
        DECLARE @ID INT, @OldPrice INT, @NewPrice INT;
        SET @ID = INSERTED.ID;
        SET @OldPrice = DELETED.Price;
        SET @NewPrice = INSERTED.Price;
        
        INSERT INTO PriceChangeHistory (MedicineID, OldPrice, NewPrice, ChangeDate)
        VALUES (@ID, @OldPrice, @NewPrice, GETDATE());
    END
END;

-- Тригер для відстеження видалень із таблиці Medicine
CREATE TRIGGER trg_Medicine_Delete
ON Medicine
AFTER DELETE
AS
BEGIN
    DECLARE @ID INT;
    SET @ID = DELETED.ID;
    
    INSERT INTO DeletedMedicines (MedicineID, DeleteDate)
    VALUES (@ID, GETDATE());
END;