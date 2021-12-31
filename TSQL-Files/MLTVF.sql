USE [residentialLivingComplex];
GO

CREATE FUNCTION dbo.getDateOfBirthAndAge() /* Multi Line Table Value Function to display resident date of birth and age in one table */
RETURNS @temp TABLE
(
  dateOfBirth DATETIME,
  age INT
)
AS
BEGIN
INSERT INTO @temp
SELECT dateOfBirth, dbo.dateOfBirthToAge(dateOfBirth) FROM resident
RETURN
END
