EXEC sp_addrolemember N'db_datawriter', N'alternateUser'
EXEC sp_addrolemember N'db_datareader', N'alternateUser'
USE [residentialLivingComplex]
GO
GRANT ALL TO alternateUser
