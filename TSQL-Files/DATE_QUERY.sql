USE [residentialLivingComplex];
GO

SELECT * FROM familyUnit
WHERE dateOfArrival BETWEEN '2020-01-01 00:00:00' AND '2020-01-31 23:59:59'
ORDER BY dateOfArrival, familyUnitName /* Seeing all of the family units that started living at the residential living complex in January 2020 */
