USE [Customer_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'tblShippers')
BEGIN
  CREATE TABLE dbo.tblShippers
(
  ShipperID   INT NOT NULL PRIMARY KEY, 
  CompanyName  [NVARCHAR](50)  NOT NULL,
);
END

INSERT INTO dbo.tblShippers
(
[ShipperID],[CompanyName]
)
VALUES
(10,'Titanics Company'),
(20,'Titan Company'),
(30,'Nitan Company'),
(40,'Flora Company'),
(50,'Fanny Company'),
(60,'Assens Company'),
(70,'Vita Company'),
(80,'Esta Company'),
(90,'Meta Company'),
(100,'Seeta Company');
GO

Select * from tblShippers