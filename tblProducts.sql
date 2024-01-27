USE [Customer_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'tblProducts')
BEGIN
  CREATE TABLE dbo.tblProducts 
(
  ProductID   INT NOT NULL PRIMARY KEY,
  SupplierID   INT NOT NULL,
  CategoryID   INT NOT NULL,
  ProductName  [NVARCHAR](50)  NOT NULL,
  EnglishName  [NVARCHAR](50)  NOT NULL,
  QuantityPerUnit  [NVARCHAR](50)  NOT NULL,
  UnitPrice [NVARCHAR](50) NOT NULL,
  UnitInStock [NVARCHAR](50) NOT NULL,
  UnitOnOrder [NVARCHAR](50) NOT NULL,
  ReorderLevel [NVARCHAR](50) NOT NULL,
  Discontinued  BIT DEFAULT 0,
);
END

ALTER TABLE dbo.tblProducts
ADD FOREIGN KEY (SupplierID)
REFERENCES dbo.tblSupplier (SupplierID);