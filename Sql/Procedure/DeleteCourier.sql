CREATE PROCEDURE DeleteCourier
    @CourierId INT
AS
BEGIN
    DELETE FROM Couriers
    WHERE Id = @CourierId;
END;
