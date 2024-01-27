USE [Customer_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'tblOrders')
BEGIN
  CREATE TABLE dbo.tblOrders
(
  OrderID INT NOT NULL PRIMARY KEY,
  CustomerID INT NOT NULL,
  EmployeeID INT NOT NULL,
  ShipName [NVARCHAR](50) NOT NULL,
  ShipAddress [NVARCHAR](50) NOT NULL,
  ShipCity [NVARCHAR](50) NOT NULL,
  ShipRegion [NVARCHAR](50) NOT NULL,
  ShipPostalCode INT NOT NULL,
  ShipCountry [NVARCHAR](50) NOT NULL,
  ShipVia [NVARCHAR](50) NOT NULL,
  OrderDate DATE NOT NULL,
  RequiredDate DATE NOT NULL,
  ShippedDate DATE NOT NULL,
  Freight [NVARCHAR](50) NOT NULL,
  CONSTRAINT CK_ShippedDateAfterOrderDate CHECK (ShippedDate > OrderDate)
);
END

INSERT INTO dbo.tblOrders
(
[OrderID],[CustomerID],[EmployeeID],[ShipName],[ShipAddress],[ShipCity],[ShipRegion],[ShipPostalCode],
[ShipCountry],[ShipVia],[OrderDate],[RequiredDate],[ShippedDate],[Freight]
)
VALUES
(0001,001, 100, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0002,002, 200, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0003,003, 300, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0004,004, 400, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0005,005, 500, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0006,006, 600, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0007,007, 700, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0008,008, 800, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0009,009, 900, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted'),
 (0010,010, 1000, 'Titanic', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', 'Eastern Route', '2014-05-22', '2014-06-30', '2014-05-29', 'Posted')
 ;
GO


SELECT OrderID,OrderDate,CustomerID,ShippedDate FROM dbo.tblOrders