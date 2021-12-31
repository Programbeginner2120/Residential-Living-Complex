USE [residentialLivingComplex];
EXEC sp_addrolemember N'db_datawriter', N'alternateUser' /* These roles are given so that alternateUser is not denied access */
EXEC sp_addrolemember N'db_datareader', N'alternateUser'
GRANT ALL TO alternateUser /* alternateUser can now select, insert, update, delete, access references */
