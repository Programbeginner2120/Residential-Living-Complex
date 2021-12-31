USE [residentialLivingComplex];
GO

WITH CTE_residentFamilyUnitRoomType (firstName, middleInitial, lastName, familyUnitName, room, roomType) AS
(SELECT resident.firstName, resident.middleInitial, resident.lastName, familyUnit.familyUnitName, room.roomNumber, roomType.roomDescription
FROM resident, familyUnit, room, roomType
WHERE resident.familyUnitId = familyUnit.familyUnitId AND room.familyUnitId = familyUnit.familyUnitId AND room.roomTypeId = roomType.roomTypeId)
SELECT * FROM CTE_residentFamilyUnitRoomType

/* Common Table Expression that lists each resident along with their first name, middle initial, last name, family unit name, room and room type */
