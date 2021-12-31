USE [residentialLivingComplex];
GO

SELECT * INTO #DayCareWorkersOverRetirementAge FROM vwDayCareWorkers
WHERE CurrentAge >= 62 /* 62 is the retirement age in New York */

SELECT * FROM #DayCareWorkersOverRetirementAge
ORDER BY CurrentAge DESC

SELECT * INTO #WorkingResidentsOverRetirementAge FROM vwEmployedResidents
WHERE CurrentAge >= 62 /* 62 is the retirement age in New York */

SELECT * FROM #WorkingResidentsOverRetirementAge
ORDER BY CurrentAge DESC

/* Creates temporary tables from previously created views listing day care employees and residents who are working who are at or above retirement age */
