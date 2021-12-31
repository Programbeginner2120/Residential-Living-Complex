USE [residentialLivingComplex];
GO

ALTER TABLE resident
ADD isMale BIT NULL
GO
UPDATE resident
SET isMale = 0
WHERE residentId % 3 != 0
UPDATE resident
SET isMale = 1
WHERE residentId % 3 = 0
ALTER TABLE employee
ADD isMale BIT NULL
GO
UPDATE employee
SET isMale = 0
WHERE employeeId % 2 != 0
UPDATE employee
SET isMale = 1
WHERE employeeId % 2 = 0
ALTER TABLE resident
ADD age INT NULL
GO
UPDATE resident
SET age = (DATEDIFF(day, dateOfBirth, CURRENT_TIMESTAMP) / 365.25)
WHERE residentId BETWEEN 1 AND 400
GO
UPDATE resident
SET isEmployed = 1
WHERE age >= 25 and age <= 60
GO
UPDATE resident
SET isEmployed = 0
WHERE age < 14
GO
UPDATE familyUnit
SET dateOfArrival = DATEADD(day, ROUND(DATEDIFF(day, '2020-01-01', '2020-12-31') * RAND(CHECKSUM(NEWID())), 0), DATEADD(second, CHECKSUM(NEWID()) % 48000, '2020-01-01'))
ALTER TABLE resident
DROP COLUMN age
