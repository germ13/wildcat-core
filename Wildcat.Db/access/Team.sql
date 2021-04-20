CREATE TABLE [access].[Team]
(
	[TeamName] NVARCHAR(128) NOT NULL PRIMARY KEY,
	[LocationCode] NVARCHAR(4) NULL,
	[ApplicationCode] NVARCHAR(32) NOT NULL,
	[Detail] NVARCHAR(128) NULL,
	[IsActive] BIT NOT NULL DEFAULT 1,
	CONSTRAINT FK_Team__Location_Code FOREIGN KEY ([LocationCode]) REFERENCES [access].[Location]([Code]),
	CONSTRAINT FK_Team__Application_Code FOREIGN KEY ([ApplicationCode]) REFERENCES [access].[Application]([Code])
)
