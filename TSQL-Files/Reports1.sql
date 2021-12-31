USE [residentialLivingComplex];
GO

/* I want to see how many of our residents over the age of 62 (the retirement age in New York) are still employed */

SELECT firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName FROM resident
WHERE isEmployed = 1 and age >= 62 ORDER BY lastName, firstName

/* I want to see the number of distinct resident who frequent the Shady Shoals Gourment Restaurant (DISTINCT KEYWORD USED SINCE A RESIDENT CAN GO THE RESTAURANT MULTIPLE TIMES, GENERATING MULTIPLE ROWS) */

SELECT DISTINCT firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName, age AS Age, isEmployed as IsEmployed, isMale AS IsMale FROM resident, facilityCheckIn
WHERE facilityCheckIn.restaurantId = 1 ORDER BY lastName, firstName

/* I want to see the number of distinct resident who frequent the one or more of the various exercise facilities (DISTINCT KEYWORD USED SINCE DATA IS GENERATED EACH TIME A RESIDENT USES ANY FACILITY) */

SELECT DISTINCT firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName, age AS Age, isEmployed as IsEmployed, isMale AS IsMale FROM resident, facilityCheckIn
WHERE facilityCheckIn.exerciseRoomId > 0 ORDER BY age, lastName, firstName

/* I want to see the number of distinct resident who frequent the one or more of the various day care facilities (DISTINCT KEYWORD USED SINCE DATA IS GENERATED EACH TIME A RESIDENT USES ANY FACILITY) */

SELECT DISTINCT firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName, age AS Age, isEmployed as IsEmployed, isMale AS IsMale FROM resident, facilityCheckIn
WHERE facilityCheckIn.dayCareId > 0 ORDER BY age, lastName, firstName

/* I want to see the top 20 oldest residents living at Shady Shoals Residential Living Complex */

SELECT TOP 20 firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName, age AS OldestAgesRanked FROM resident ORDER BY age DESC, lastName, firstName

/* I want to see which residents and how many of them are using any of the facilities at Shady Shoals Residential Living Complex (DISTINCT KEYWORD USED SINCE DATA IS GENERATED EACH TIME A RESIDENT USES ANY FACILITY) */

SELECT DISTINCT firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName, age AS Age FROM resident
WHERE residentId IN (SELECT residentId FROM facilityCheckIn) ORDER BY lastName, firstName

/* I want to calculate the average age of all the residents living at Shady Shoals and I want to see which residents have the average age */

SELECT age AS AverageAgeOfResidents, firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName FROM resident
WHERE age = (SELECT AVG(age) FROM resident) ORDER BY lastName, firstName

/* I want to see which of my residents have last names beginning with the letter 'Z' */

SELECT firstName AS FirstName, middleInitial AS MiddleInitial, lastName AS LastName FROM resident
WHERE lastName LIKE 'Z%' ORDER BY lastName, firstName

/* I want to see which residents are living in Suite rooms and how many people occupy each suite room */

SELECT familyUnitName, numberOfMembers, roomDescription FROM familyUnit, roomType
WHERE roomDescription = 'Suite Room' ORDER BY numberOfMembers, familyUnitName

/* I want to have a collection of each residents full name grouped together with his or her respective family unit */

SELECT (lastName + ', ' + firstName + ' ' + middleInitial) AS FullName, familyUnitName FROM resident, familyUnit
WHERE lastName = familyUnitName ORDER BY familyUnitName, firstName
