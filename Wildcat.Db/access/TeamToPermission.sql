CREATE TABLE [access].[TeamToPermission]
(
	[TeamName] NVARCHAR(128) NOT NULL,
	[PermissionCode] NVARCHAR(64) NOT NULL,
	CONSTRAINT FK_TeamToPermission__Team_TeamName FOREIGN KEY ([TeamName]) REFERENCES [access].[Team]([TeamName]),
	CONSTRAINT FK_TeamToPermission__Permission_Code FOREIGN KEY ([PermissionCode]) REFERENCES [access].[Permission]([Code])
)
