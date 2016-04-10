-- ITC222
-- Thomas Karchesy
-- Assignment 2 Selects One
-- April 8, 2016

use MetroAlt

-- Add the following tables to metroAlt with 
-- the following columns and constraints

--1 BusService
-- BusServiceKey int identity primary key
-- BusServiceName variable character, required
-- BusServiceDescription variable character
CREATE TABLE BusService
(
	BusServiceKey int identity(1,1) primary key,
	BusServiceName nvarchar(255) not null,
	BusServiceDescription nvarchar(255)
)

--2 Maintenance
-- MaintenanceKey int, an identity, primary key
-- MainenanceDate Date, required
-- Buskey int foreign key related to Bus, required
CREATE TABLE Maintance
(
	MaintenanceKey int identity(1,1) primary key,
	MainenanceDate Date not null,
	Buskey int not null,
	Constraint FK_Buskey Foreign Key(Buskey)
		References BusService(BusServiceKey) --Check re instructions
)

--3 MaintenanceDetail (we will use Alter table statements 
--  to add Keys to this table)
-- MaintenanceDetailKey int identity 
-- Maintenancekey int  required
-- EmployeeKey int  required
-- BusServiceKey int  required
-- MaintenanceNotes  variable character
CREATE TABLE MaintenanceDetail
(
	MaintenceDetailKey int identity(1,1),
	MaintenanceKey int not null,
	EmployeeKey int not null,
	BusServiceKey int not null,
	MaintenanceNotes nvarchar(255)
)

--4 Use alter table to add a primary key constraint to 
--  Maintenance detail setting MaintenanceDetailKey as the primary key
Alter Table MaintenanceDetail
Add Constraint PK_MaintenanceDetailKey
	Primary Key (MaintenanceDetailKey);

--5 Use alter table to set MaintenceKey as a foreign key
Alter Table MaintenanceDetail
Add Constraint FK_MaintenceKey Foreign Key (MaintenanceKey)
	References Maintance (MaintenanceKey);

-- between 5 & 6 Use alter table to set EmployeeKey as 
--  a foreign key
Alter Table --need table name
Add Constraint FK_EmployeeKey Foreign Key (EmployeeKey)
	References -- tablename (EmployeeKey); 

--6 Use alter table to set BusServiceKey as a foreign key
Alter Table MaintenanceDetail
Add Constraint FK_BusServiceKey Foreign Key (BusServiceKey)
	References BusService (BusServiceKey);

--7 Add a column to BusType named BusTypeAccessible. 
--  Its data type should be bit 0 for no and 1 for yes.
Alter Table BusType
Add BusTypeAccessible -- type bit 0 for no and 1 for yes

--8 Use alter table to Add a constraint to email in the 
--  Employee table to make sure each email is uniqu
Alter Table Employee
Add Constraint -- to email to make each email unique




 





