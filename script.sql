IF DB_ID('EduSmartDB') IS NULL
BEGIN
    CREATE DATABASE EduSmartDB;
END;
GO

USE EduSmartDB;
GO

IF OBJECT_ID('dbo.Adoptions', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Adoptions;
END;
GO

CREATE TABLE dbo.Adoptions (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PetName VARCHAR(80) NOT NULL,
    Species VARCHAR(40) NOT NULL,
    Age INT NOT NULL,
    AdopterName VARCHAR(120) NOT NULL,
    Phone VARCHAR(30) NOT NULL,
    AdoptionDate DATE NOT NULL,
    Status VARCHAR(30) NOT NULL,
    Description VARCHAR(255) NULL
);
GO

INSERT INTO dbo.Adoptions
    (PetName, Species, Age, AdopterName, Phone, AdoptionDate, Status, Description)
VALUES
    ('Luna', 'Perro', 2, 'Mariana Flores', '987654321', '2026-04-10', 'Pendiente', 'Rescatada y vacunada.'),
    ('Milo', 'Gato', 1, 'Carlos Rojas', '912345678', '2026-04-12', 'Aprobada', 'Necesita hogar sin otros gatos.'),
    ('Nina', 'Perro', 4, 'Andrea Vega', '956123789', '2026-04-20', 'En seguimiento', 'Muy sociable con ninos.');
GO

SELECT * FROM dbo.Adoptions;


