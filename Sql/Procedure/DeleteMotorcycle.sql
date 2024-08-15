CREATE PROCEDURE DeleteMotorcycle
    @MotorcycleId INT
AS
BEGIN
    DELETE FROM Motorcycles
    WHERE Id = @MotorcycleId;
END;
