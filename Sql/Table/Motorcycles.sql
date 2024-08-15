USE [DBNAME]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Mottu_Table_Motorcycles](
    Id INT IDENTITY(1,1),
    Identifier NVARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Model NVARCHAR(100) NOT NULL,
    LicensePlate NVARCHAR(10) NOT NULL UNIQUE,
    RegistrationDate DATETIME DEFAULT GETDATE(),
 CONSTRAINT [PK_Table_Motorcycles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



