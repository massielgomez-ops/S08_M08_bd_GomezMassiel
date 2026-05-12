-- ============================================
-- CREAR BASE DE DATOS
-- ============================================
IF DB_ID('EduSmartDB') IS NULL
BEGIN
    CREATE DATABASE EduSmartDB;
END;
GO

USE EduSmartDB;
GO

-- ============================================
-- ELIMINAR TABLA SI EXISTE
-- ============================================
IF OBJECT_ID('dbo.Adoptions', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Adoptions;
END;
GO

-- ============================================
-- TABLA DE ADOPCIONES DE ANIMALES
-- ============================================
CREATE TABLE dbo.Adoptions (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PetName VARCHAR(80) NOT NULL,
    Species VARCHAR(40) NOT NULL,
    Breed VARCHAR(60) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(20) NOT NULL,
    AdopterName VARCHAR(120) NOT NULL,
    Email VARCHAR(120) NOT NULL,
    Phone VARCHAR(30) NOT NULL,
    Address VARCHAR(150) NOT NULL,
    AdoptionDate DATE NOT NULL,
    Status VARCHAR(30) NOT NULL,
    Description VARCHAR(255) NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    IsDeleted BIT DEFAULT 0
);
GO

-- ============================================
-- DATOS DE PRUEBA
-- ============================================
INSERT INTO dbo.Adoptions
    (PetName, Species, Breed, Age, Gender, AdopterName, Email, Phone, Address, AdoptionDate, Status, Description)
VALUES
    ('Luna', 'Perro', 'Labrador', 2, 'Hembra', 'Mariana Flores', 'mariana@gmail.com', '987654321', 'Callao', '2026-04-10', 'Pendiente', 'Rescatada y vacunada.'),
    
    ('Milo', 'Gato', 'Siames', 1, 'Macho', 'Carlos Rojas', 'carlos@gmail.com', '912345678', 'Lima', '2026-04-12', 'Aprobada', 'Necesita hogar sin otros gatos.'),
    
    ('Nina', 'Perro', 'Mestizo', 4, 'Hembra', 'Andrea Vega', 'andrea@gmail.com', '956123789', 'San Miguel', '2026-04-20', 'En seguimiento', 'Muy sociable con niños.'),

    ('Rocky', 'Perro', 'Pastor Aleman', 3, 'Macho', 'Luis Torres', 'luis@gmail.com', '998877665', 'Bellavista', '2026-05-01', 'Pendiente', 'Activo y jugueton.'),

    ('Mishi', 'Gato', 'Persa', 2, 'Hembra', 'Ana Perez', 'ana@gmail.com', '945678123', 'La Perla', '2026-05-05', 'Aprobada', 'Esterilizada y desparasitada.');
GO

-- ============================================
-- CONSULTA GENERAL
-- ============================================
SELECT * FROM dbo.Adoptions;
GO