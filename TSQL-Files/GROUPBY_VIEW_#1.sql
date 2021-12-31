USE [residentialLivingComplex];
GO

CREATE VIEW vwDayCareWorkers AS
SELECT firstName, middleInitial, lastName, dateOfBirth, FLOOR((DATEDIFF(day, dateOfBirth, CURRENT_TIMESTAMP) / 365.25)) AS CurrentAge FROM employee
WHERE employee.dayCareId IS NOT NULL
GROUP BY  FLOOR((DATEDIFF(day, dateOfBirth, CURRENT_TIMESTAMP) / 365.25)), lastName, firstName, middleInitial, dateOfBirth

/* Creates view vwDayCareWorkers that lists the employees who work at the day cares in the residential living complex */
