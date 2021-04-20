CREATE TABLE [access].[ApplicationUser]
(
	[UserName] NVARCHAR(128) NOT NULL PRIMARY KEY,
	[Details] NVARCHAR(64) NULL,
	[IsActive] BIT NOT NULL DEFAULT(1)
)
