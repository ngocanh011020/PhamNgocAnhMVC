create table UserAccount(
ID bigint IDENTITY(1,1) PRIMARY KEY,
UserName nvarchar(250),
Password nvarchar(250),
Status bit not null default 1,
)
create table Category (
ID bigint IDENTITY(1,1) PRIMARY KEY,
Name nvarchar(250),
Description nvarchar(250)
)
create table Product (
ID bigint IDENTITY(1,1) PRIMARY KEY,
Name nvarchar(250),
Unitcost decimal(18,0) default 0,
Description nvarchar(500),
Image nvarchar(250),
CategoryID bigint,
Quantity int default 0,
Status bit not null default 1,
FOREIGN KEY(CategoryID) REFERENCES dbo.Category(ID)
)