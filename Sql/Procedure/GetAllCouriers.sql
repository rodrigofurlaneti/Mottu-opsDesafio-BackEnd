USE [DB_NAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Mottu_Procedure_Couriers_GetAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
		*
    FROM [dbo].[Mottu_Table_Couriers];
END;
GO


