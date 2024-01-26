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
|Room_id |It is used as a unique identifier for each room. |INT|PRIMARY KEY| 
|Building |It describes the type of building |NVARCHAR(50)|NOT NULL| 
|Room_number|It describes the number of each room.|INT|NOT NULL |
|Capacity |It describes the capacity of the building |NVARCHAR(50)|NOT NULL |
|Room_Type|It is a foreign key which builds a relationship. It describes the type of room used.|INT|FOREIGN KEY|

### For Entity tblSupplier
|Attribute |Description |Data type|Constraint |
|----------|------------|---------|-----------|
|School_number|It is used to uniquely identify the number of each school.|INT|PRIMARY KEY |
|School_name|It is used to describe the name of the school.|NVARCHAR(50)|NOT NULL|
|School_phone|It is the school contact |NVARCHAR(50)|NOT NULL 
|Room_id|It's a foreign key that describes the relationship between the school and location entity.|INT|FOREIGN KEY| 


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