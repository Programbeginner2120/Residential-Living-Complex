USE [residentialLivingComplex];
GO

CREATE FUNCTION dbo.getDateOfBirthAndAgeIL() /* In line function that to display resident date of birth and age in one table */
RETURNS @temp TABLE
RETURNS TABLE
AS
RETURN
SELECT dateOfBirth, dbo.dateOfBirthToAge(dateOfBirth) as age
FROM resident
