CREATE PROCEDURE UpdateMotorcycleRental
    @RentalId INT,
    @CourierId INT,
    @MotorcycleId INT,
    @StartDate DATE,
    @EndDate DATE,
    @ExpectedEndDate DATE,
    @PlanType NVARCHAR(10),
    @DailyRate DECIMAL(10, 2)
AS
BEGIN
    UPDATE MotorcycleRentals
    SET CourierId = @CourierId,
        MotorcycleId = @MotorcycleId,
        StartDate = @StartDate,
        EndDate = @EndDate,
        ExpectedEndDate = @ExpectedEndDate,
        PlanType = @PlanType,
        DailyRate = @DailyRate
    WHERE Id = @RentalId;
END;
