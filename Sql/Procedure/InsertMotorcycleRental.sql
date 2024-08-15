CREATE PROCEDURE InsertMotorcycleRental
    @CourierId INT,
    @MotorcycleId INT,
    @StartDate DATE,
    @EndDate DATE,
    @ExpectedEndDate DATE,
    @PlanType NVARCHAR(10),
    @DailyRate DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO MotorcycleRentals (CourierId, MotorcycleId, StartDate, EndDate, ExpectedEndDate, PlanType, DailyRate)
    VALUES (@CourierId, @MotorcycleId, @StartDate, @EndDate, @ExpectedEndDate, @PlanType, @DailyRate);
    
    SELECT SCOPE_IDENTITY() AS NewRentalId;
END;
