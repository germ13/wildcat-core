﻿CREATE TABLE [access].[Permission]
(
	[Code] NVARCHAR(64) NOT NULL PRIMARY KEY,
	[Detail] NVARCHAR(128),
	[IsActive] BIT NOT NULL DEFAULT(1)
)
