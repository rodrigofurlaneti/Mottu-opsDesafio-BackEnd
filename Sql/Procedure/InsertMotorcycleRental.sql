USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_MotorcycleRentals_Insert]
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

    INSERT INTO [dbo].[Mottu_Table_MotorcycleRentals] (CourierId, MotorcycleId, StartDate, EndDate, ExpectedEndDate, PlanType, DailyRate)
    VALUES (@CourierId, @MotorcycleId, @StartDate, @EndDate, @ExpectedEndDate, @PlanType, @DailyRate);
    
    SELECT SCOPE_IDENTITY() AS NewRentalId;
END;
GO


