IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'T2004E_PracticalEAP')
BEGIN
CREATE DATABASE T2004E_PracticalEAP


END
GO
    USE T2004E_PracticalEAP

GO

IF NOT EXISTS (SELECT * FROM sys.tables t join sys.schemas s ON (t.schema_id = s.schema_id) WHERE s.name='dbo' and t.name='Employee')
CREATE TABLE [dbo].[Employee]
(
 [Id]          int IDENTITY (1, 1) NOT NULL ,
 [StudentID]   nvarchar(max) NOT NULL ,
 [FirstName]   nvarchar(max) NOT NULL ,
 [LastName]    nvarchar(max) NOT NULL ,
 [PhoneNumber] nvarchar(max) NOT NULL ,
 [Email]       nvarchar(max) NOT NULL ,


 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

-- INSERT EMPLOYEES --
INSERT INTO dbo.Employee([StudentID],[FirstName], [LastName], [PhoneNumber], [Email]) values
	('T2004A', 'A', 'Phan Minh', '0123456789', 'phanminhA@gmail.com'),
	('T2005A', 'B', 'Phan Minh', '0123456789', 'phanminhB@gmail.com'),
	('T2006A', 'C', 'Doan Van', '0123456789', 'phanminhC@gmail.com'),
	('T2007A', 'D', 'Doan Van', '0123456789', 'phanminhD@gmail.com'),
	('T2008A', 'E', 'Doan Van', '0123456789', 'phanminhE@gmail.com')
