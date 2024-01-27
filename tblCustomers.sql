USE [Customer_database]

IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'tblCustomers')
BEGIN
  CREATE TABLE dbo.tblCustomers
(
  CustomerID   INT NOT NULL PRIMARY KEY, 
  CompanyName  [NVARCHAR](50)  NOT NULL,
  ContactName [NVARCHAR](50)  NOT NULL,
  ContactTitle [NVARCHAR](50) NOT NULL,
  Customer_Address [NVARCHAR](50) NOT NULL,
  City [NVARCHAR](50) NOT NULL,
  Region [NVARCHAR](50) NOT NULL,
  PostalCode [NVARCHAR](50) NOT NULL,
  Country [NVARCHAR](50) NOT NULL DEFAULT 'Canada',
  Phone [NVARCHAR](50) NOT NULL,
  Fax [NVARCHAR](50) NOT NULL,
);
END

INSERT INTO dbo.tblCustomers
(
[CustomerID],[CompanyName],[ContactName],[ContactTitle],[Customer_Address],[City],[Region],[PostalCode],
[Country],[Phone],[Fax]
)
VALUES
(001, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (002, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (003, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (004, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (005, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (006, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (007, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (008, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (009, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'England', '+21293216778', '20-11838'),
 (010, 'Obi Imports Ltd', 'obi.mail.com', 'Email', '40 Crescent ave', 'Manchester',
 'Vwire', 212, 'Canada', '+21293216778', '20-11838');
GO

SELECT * FROM dbo.tblCustomers
