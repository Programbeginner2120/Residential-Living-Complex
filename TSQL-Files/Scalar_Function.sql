USE [residentialLivingComplex];
GO

CREATE FUNCTION dbo.dateOfBirthToAge (@DOB DATETIME) /* Scalar function that converts resident date of birth to age */
RETURNS INT AS
BEGIN
    RETURN FLOOR((DATEDIFF(day, @DOB, CURRENT_TIMESTAMP) / 365.25))
END
