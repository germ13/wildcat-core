CREATE PROCEDURE [access].[ApplicationUser_GetPermissions]
	@UserName nvarchar(32)  = null
AS
	SELECT p.Code
	FROM [access].[ApplicationUser] au
	JOIN [access].[ApplicationUserToTeam] au2t
		ON au.UserName = au2t.UserName AND au.IsActive = 1
	JOIN [access].[Team] t
		ON au2t.TeamName = t.TeamName AND t.IsActive = 1
	JOIN [access].[TeamToPermission] t2p
		ON t.TeamName = t2p.TeamName 
	JOIN [access].[Permission] p
		ON 	t2p.PermissionCode = p.Code AND p.IsActive =1
	WHERE au.UserName = @UserName
RETURN 0
