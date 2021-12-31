USE [residentialLivingComplex];
GO

/* Index on recLoungeName from recreationLounge table */
DROP INDEX IX_RECREATIONLOUNGE_RECLOUNGENAME ON recreationLounge

/* Index on workCompName from workAndComputerCenter table */
DROP INDEX IX_WORKANDCOMPUTERCENTER_WORKCOMPNAME ON workAndComputerCenter

/* Index on exerciseRoomName from exerciseRoom table */
DROP INDEX IX_EXERCISEROOM_EXERCISEROOMNAME ON exerciseRoom

/* Index on dayCareName from dayCare table */
DROP INDEX IX_DAYCARE_DAYCARENAME ON dayCare

/* Index on familyUnitName and dateOfArrival from familyUnit table, includes numberOfMembers */
DROP INDEX IX_FAMILYUNIT_FAMILYUNITNAME_DATEOFARRIVAL ON familyUnit

/* Index on roomNumber and dateOfArrival from room table */
DROP INDEX IX_ROOM_ROOMNUMBER ON room

/* Index on dateOfBirth from resident table, includes isEmployed and isMale */
DROP INDEX IX_RESIDENT_DATEOFBIRTH ON resident

/* Index on dateOfBirth from employee table, includes isMale */
DROP INDEX IX_EMPLOYEE_DATEOFBIRTH ON employee
