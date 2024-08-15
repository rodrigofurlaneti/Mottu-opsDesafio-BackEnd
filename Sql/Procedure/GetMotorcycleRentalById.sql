CREATE PROCEDURE GetMotorcycleRentalById
    @RentalId INT
AS
BEGIN
    SELECT Id, CourierId, MotorcycleId, StartDate, EndDate, ExpectedEndDate, PlanType, DailyRate, CreatedAt
    FROM MotorcycleRentals
    WHERE Id = @RentalId;
END;
