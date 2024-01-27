i) Add the following constraints:
a) tblCustomer's table: Country-default to Canada. tblOrderDetails: Quantity ->0

**tblCustomer**
```sql
Country [NVARCHAR](50) NOT NULL DEFAULT 'Canada'
```

**tblOrderDetails**

```sql
QUANTITY INT CHECK (Quantity > 0)
```

b) tblShippers: CompanyName must be unique.

```sql
ALTER TABLE dbo.tblShippers
ADD CONSTRAINT UC_CompanyName UNIQUE (CompanyName);
```

c) tblOrders: ShippedDate must be greater than order date.

```sql
CONSTRAINT CK_ShippedDateAfterOrderDate CHECK (ShippedDate > OrderDate)
```

ii) Show a list of customers and the orders they generated during 2014. Display customer ID, order ID, order date and date ordered.

```sql
SELECT CustomerID, OrderID, OrderDate, ShippedDate FROM dbo.tblOrders
```

iii) Using the ALTER TABLE statement, add a new field(Active) in the tblcustomer. Default it to True.

```sql
USE Customer_database;
GO

ALTER TABLE dbo.tblCustomers
ADD Active BIT DEFAULT 1;
```

iv) Show all orders purchased before September 1, 2012. Display company name, date ordered and total amount of order (include freight).

```sql
SELECT
    c.CompanyName,
    o.OrderDate,
    SUM(od.UnitPrice * od.Quantity + o.Freight) AS TotalAmount
FROM
    Customer_database.dbo.tblOrders o
JOIN
    Customer_database.dbo.tblCustomers c ON c.CustomerID = o.OrderID
JOIN
    Customer_database.dbo.tblOrderDetails od ON o.OrderID = od.OrderID
WHERE
    o.OrderDate < '2012-09-01'
GROUP BY
    c.CompanyName,
    o.OrderDate,
    o.Freight,
    o.OrderID;
```

v) Show all orders that have been shipped via Federal Shipping. Display OrderID, ShipName, ShipAddress and CustomerID.

```sql
SELECT OrderID, ShipName, ShipAddress, CustomerID FROM dbo.tblOrders
```

vi) Show all customers who have not made purchases in 2011.

```sql
SELECT
    c.CompanyName,
    c.ContactName
FROM
    Customer_database.dbo.tblCustomers c
WHERE NOT EXISTS (
  SELECT 1
  FROM Customer_database.dbo.tblOrders o
  WHERE o.CustomerID = c.CustomerID AND o.OrderDate >= '2011-01-01' AND o.OrderDate < '2012-01-01'
);
```

vii) Show all products that have never been ordered.

```sql
SELECT
    p.ProductID,
    p.ProductName
FROM
    Customer_database.dbo.tblProducts p
LEFT JOIN Customer_database.dbo.tblOrderDetails od ON p.ProductID = od.ProductID
WHERE od.ProductID IS NULL;
```

viii) Show products supplied by Supplier A and Supplier B. Display product name and supplier name.

```sql
SELECT
    p.ProductName, s.Supplier_Name
FROM
    Customer_database.dbo.tblProducts p
INNER JOIN Customer_database.dbo.tblSupplier s ON p.SupplierID = s.SupplierID
WHERE s.Supplier_Name IN ('Supplier A', 'Supplier B');
```

ix) Add a field to tblOrders called TotalSales. Show DDL-ALTER TABLE statement.

```sql
USE [Customer_database]
GO

ALTER TABLE dbo.tblOrders
ADD TotalSales DECIMAL(10, 2);
GO
```

x) Using the UPDATE statement, add the total sale for each order based on the order details table.

```sql
USE [Customer_database]
GO

UPDATE dbo.tblOrders  
SET dbo.tblOrders.TotalSales = (
 SELECT SUM(od.UnitPrice * od.Quantity)
 FROM dbo.tblOrderDetails od
 WHERE od.OrderID = dbo.tblOrders.OrderID
);
GO

||

UPDATE dbo.tblOrders
SET TotalSales = 200.77
WHERE OrderID = 0007
```

xi) Write a DDL and DML trigger for any of the table in the above model.

**DDL Trigger**

```sql
ALTER TABLE dbo.tblOrders
ADD TotalSales DECIMAL(10, 2);
GO
```

**DML Triggger**
```sql
SELECT
  OrderID
FROM dbo.tblOrders;
```