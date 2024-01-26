## Data Dictionary 
Data dictionary for the entities in the school database. This covers the `dbo.tblShippers`, `dbo.tblCustomers`, `dbo.tblOrders`, `dbo.tblSupplier`, `dbo.tblProducts`,and `dbo.tblOrderDetails` schemas.

### For Entity tblShippers
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|ShipperID|This is used to uniquely identify each shipping.|INT|PRIMARY KEY |
|CompanyName|This field is for the company making the shipping.|NVARCHAR(50)|NOT NULL |


### For Entity tblCustomers
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|CompanyID |This uniquely identifies the company|INT|Primary key |
|CompanyName|This is the name of the company|NVARCHAR (50)|NOT NULL|
|ContactName |This is contact of the company|NVARCHAR(50)|NOT NULL|
|CompanyName|This is the name of the company|NVARCHAR (50)|NOT NULL|
|ContactTitle|This is the title of the company|NVARCHAR(50)|NOT NULL|
|Customer_address|This is the address of the customer|NVARCHAR (50)|NOT NULL|
|City|The city of the company|NVARCHAR(50)|NOT NULL|
|Region|The region of the company|NVARCHAR(50)|NOT NULL|
|PostalCode|The postal code of the company|NVARCHAR(50)|NOT NULL|
|Country|The country of the company|NVARCHAR(50)|NOT NULL|
|Phone|This is the phone of the company|NVARCHAR(50)|NOT NULL|
|Fax|This is the fax address of the company|NVARCHAR(50)|NOT NULL|


### For Entity tblOrders
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|OrderID|This uniquely identifies the order|INT|PRIMARY KEY| 
|CustomerID|This is a foreign key. It uniquely identifies the customer|INT|FOREIGN KEY| 
|EmployeeID|This indentifies each employee|INT|NOT NULL |
|ShipName|This is the name of the shipping|NVARCHAR(50)|NOT NULL |
|ShipAddress|This is the address the product is shipped to.|NVARCHAR(50)|NOT NULL|
|ShipCity|This is city the product is shipped to.|NVARCHAR(50)|NOT NULL| 
|ShipRegion|This is the region the product is shipped to.|NVARCHAR(50)|NOT NULL| 
|ShipPostalCode|This is the postal code the product is shipped to.|NVARCHAR(50)|NOT NULL |
|ShipCountry|This is the country the product is shipped to.|NVARCHAR(50)|NOT NULL |
|ShipVia|This is route the shipping will pass through.|NVARCHAR(50)|NOT NULL|
|OrderDate|This is the date the shipping was requested.|Date|NOT NULL| 
|RequiredDate|This is the date the shipping is expected.|Date|NOT NULL |
|ShippedDate|This is the date the shipping is made.|Date|NOT NULL |
|Freight|This is the details of the shipping.|Date|NOT NULL|


### For Entity tblSupplier
|Attribute |Description |Data type|Constraint |
|----------|------------|---------|-----------|
|SupplierID|This uniquely identifies the supplier.|INT|PRIMARY KEY |
|Name|This is the supplier's name.|NVARCHAR(50)|NOT NULL|
|Address|The supplier's address|NVARCHAR(50)|NOT NULL 
|City|The supplier's city.|NVARCHAR(50)|NOT NULL| 
|Province|The supplier's province.|NVARCHAR(50)|NOT NULL| 


### For Entity tblProducts
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|ProductID|This uniquely identifies the product.|INT|PRIMARY KEY |
|SupplierID|This is a foreign key. It uniquely identifies the supplier|INT|FOREIGN KEY|
|CategoryID|It identifies the category|INT|NOT NULL|
|ProductName|It is the student address|NVARCHAR(50)|NOT NULL|
|EntryName|It is the name of the entry|NVARCHAR(50)|NOT NULL| 
|QuantityPerUnit|It is unit value of each quantity.|NVARCHAR(50)|NOT NULL|
|UnitPrice|It is the unit price of each quantity.|INT|NOT NULL| 
|UnitsInStock|It is the total units of the items in stock.|NVARCHAR(50)|NOT NULL|
|UnitsOnOrder|It is the total units of the items ordered.|NVARCHAR(50)|NOT NULL| 
|ReorderLevel|It is level of reordering.|NVARCHAR(50)|NOT NULL|
|Discontinued|This is a boolean that checks whether the order was discontinued or not.|NVARCHAR(50)|NOT NULL| 


### For Entity tblOrderDetails
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|OrderID|This uniquely identifies the order. It serves as a foreign key and a primary key.|INT|PRIMARY KEY |
|ProductID|This uniquely identifies each order. It is a foreign key.|INT|FOREIGN KEY|
|UnitPrice|This is the unit price of each item.|NVARCHAR(50)|NOT NULL|
|Quantity|This is total quantity ordered.|INT|NULL|
|Discount|This is discount given.|NVARCHAR(50)|NULL| 
