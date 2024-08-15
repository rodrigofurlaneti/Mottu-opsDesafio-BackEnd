CREATE TABLE RegisteredMotorcycles (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Identifier NVARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Model NVARCHAR(100) NOT NULL,
    LicensePlate NVARCHAR(10) NOT NULL,
    ReceivedDate DATETIME DEFAULT GETDATE()
);
