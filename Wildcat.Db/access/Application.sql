CREATE TABLE [access].[Application]
(
	[Code] NVARCHAR(32) NOT NULL PRIMARY KEY, 
	[Details] NVARCHAR(64),
	[IsActive] BIT NOT NULL DEFAULT(1)
)
