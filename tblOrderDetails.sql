USE [Customer_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'tblOrderDetails')
BEGIN
  CREATE TABLE dbo.tblOrderDetails 
(
  OrderID INT NOT NULL PRIMARY KEY,
  ProductID INT NOT NULL,
  UnitPrice NVARCHAR(50) NULL,
  Quantity INT CHECK (Quantity > 0),
  Discount NVARCHAR(50) NULL,
);
END

ALTER TABLE dbo.tblOrderDetails
ADD FOREIGN KEY (OrderID)
REFERENCES dbo.tblOrders (OrderID);

ALTER TABLE dbo.tblOrderDetails
ADD FOREIGN KEY (ProductID)
REFERENCES dbo.tblProducts (ProductID);