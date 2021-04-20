/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO access.Location (Code) 
VALUES ('PCC'), 
       ('SHCA'), 
       ('CFCA'), 
       ('DVTX');
GO

INSERT INTO access.Application (Code)
VALUES ('PCC.Wildcat'), 
       ('SHCA.Wildcat'), 
       ('SHCA.FurnaceAlarms'),
       ('SHCA.Api');
GO

INSERT INTO access.ApplicationUser (UserName)
VALUES ('(734) 930-3030'),
       ( N'xpx15\germg'), 
       ( 'juan.serrano'), 
       ( 'germ13');
GO

-- Application User to Team


INSERT INTO access.Team (TeamName, LocationCode, ApplicationCode)
VALUES ('SHCA.Engineer', 'SHCA', 'SHCA.Wildcat'),    
       ('SHCA.Engineer.Admin', 'SHCA', 'SHCA.Wildcat'),
       ('SHCA.Finance', 'SHCA', 'SHCA.Api');
GO

INSERT INTO access.Permission (Code)
VALUES ('SHCA.Engineer.Modify'),
       ('SHCA.Engineer.Read'),
       ('SHCA.Finance.Read');
GO

INSERT INTO access.TeamToPermission (TeamName, PermissionCode)
VALUES ('SHCA.Engineer',       'SHCA.Engineer.Read'),
       ('SHCA.Engineer.Admin', 'SHCA.Engineer.Modify'),
       ('SHCA.Finance',        'SHCA.Finance.Read');
GO