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
|Student_number|It uniquely identifies a student.|INT|PRIMARY KEY |
|Last_name|It is a student's last name |NVARCHAR(50)|NOT NULL|
|First_name|It is the student first name |NVARCHAR(50)|NOT NULL|
|Student_address|It is the student address|NVARCHAR(50)|NOT NULL|
|Student_date_of_birth|It is the student date of birth |NVARCHAR(50)|NOT NULL| 
|Prog_number|It is a foreign key from Programme. It uniquely identifies the number of each program.|INT|FOREIGN KEY |
|School_number|It is a foreign from School. It uniquely identifies the number of each school.|INT|FOREIGN KEY| 

### For Entity tblOrderDetails
|Attribute |Description |Data type |Constraint |
|----------|------------|----------|-----------|
|Student_number|It uniquely identifies a student.|INT|PRIMARY KEY |
|Last_name|It is a student's last name |NVARCHAR(50)|NOT NULL|
|First_name|It is the student first name |NVARCHAR(50)|NOT NULL|
|Student_address|It is the student address|NVARCHAR(50)|NOT NULL|
|Student_date_of_birth|It is the student date of birth |NVARCHAR(50)|NOT NULL| 
|Prog_number|It is a foreign key from Programme. It uniquely identifies the number of each program.|INT|FOREIGN KEY |
|School_number|It is a foreign from School. It uniquely identifies the number of each school.|INT|FOREIGN KEY| 