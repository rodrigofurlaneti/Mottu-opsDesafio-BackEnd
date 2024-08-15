CREATE PROCEDURE GetAllMotorcycleRentals
AS
BEGIN
    SELECT Id, CourierId, MotorcycleId, StartDate, EndDate, ExpectedEndDate, PlanType, DailyRate, CreatedAt
    FROM MotorcycleRentals;
END;
