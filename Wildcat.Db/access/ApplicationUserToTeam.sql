CREATE TABLE [access].[ApplicationUserToTeam]
(
	[UserName] NVARCHAR(128) NOT NULL,
	[TeamName] NVARCHAR(128) NOT NULL,
	CONSTRAINT FK_ApplicationUserToTeam__ApplicationUser_UserName FOREIGN KEY ([UserName]) REFERENCES [access].[ApplicationUser]([UserName])
, CONSTRAINT FK_ApplicationUserToTeam__Team_TeamName FOREIGN KEY([TeamName]) REFERENCES [access].[Team]([TeamName])
)
