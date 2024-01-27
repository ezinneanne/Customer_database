USE [Customer_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'tblSupplier')
BEGIN
  CREATE TABLE dbo.tblSupplier
(
  SupplierID   INT NOT NULL PRIMARY KEY,
  Supplier_Name  [NVARCHAR](50)  NOT NULL,
  Supplier_Address  [NVARCHAR](50)  NOT NULL,
  City  [NVARCHAR](50)  NOT NULL,
  Province [NVARCHAR](50) NOT NULL,
);
END

INSERT INTO dbo.tblSupplier
(
[SupplierID],[Supplier_Name],[Supplier_Address],[City],[Province]
)
VALUES
(011,'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (022,'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (033,'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (044, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (055, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (066, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (077,'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (088,'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (099, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire'),
 (0100, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire')
 ;
GO

SELECT * FROM dbo.tblSupplier