USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_MotorcycleRentals_Update]
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
    SET NOCOUNT ON;

    UPDATE [dbo].[Mottu_Table_MotorcycleRentals]
    SET CourierId = @CourierId,
        MotorcycleId = @MotorcycleId,
        StartDate = @StartDate,
        EndDate = @EndDate,
        ExpectedEndDate = @ExpectedEndDate,
        PlanType = @PlanType,
        DailyRate = @DailyRate
    WHERE Id = @RentalId;
END;
GO


