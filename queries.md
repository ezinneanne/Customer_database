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


iv) Show all orders purchased before September 1, 2012. Display company name, date ordered and total amount of order (include freight).

v) Show all orders that have been shipped via Federal Shipping. Display OrderID, ShipName, ShipAddress and CustomerID.

vi) Show all customers who have not made purchases in 2011.

vii) Show all products that have never been ordered.

viii) Show products supplied by Supplier A and Supplier B. Display product name and supplier name.

ix) Add a field to tblOrders called TotalSales. Show DDL-ALTER TABLE statement.

x) Using the UPDATE statement, add the total sale for each order based on the order details table.

xi) Write a DDL and DML trigger for any of the table in the above model.