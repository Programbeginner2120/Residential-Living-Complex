USE [residentialLivingComplex];
GO

CREATE VIEW vwEmployedResidents AS
SELECT firstName, middleInitial, lastName, dateOfBirth, FLOOR((DATEDIFF(day, dateOfBirth, CURRENT_TIMESTAMP) / 365.25)) AS CurrentAge FROM resident
WHERE isEmployed = 1
GROUP BY FLOOR((DATEDIFF(day, dateOfBirth, CURRENT_TIMESTAMP) / 365.25)), lastName, firstName, middleInitial, dateOfBirth

/* Creates view vw EmployedResidents that lists all employed residents living at the residential living complex */
