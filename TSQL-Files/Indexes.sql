USE [residentialLivingComplex];
GO

/* Index on recLoungeName from recreationLounge table */
CREATE UNIQUE INDEX IX_RECREATIONLOUNGE_RECLOUNGENAME ON recreationLounge(recLoungeName)

/* Index on workCompName from workAndComputerCenter table */
CREATE UNIQUE INDEX IX_WORKANDCOMPUTERCENTER_WORKCOMPNAME ON workAndComputerCenter(workCompName)

/* Index on exerciseRoomName from exerciseRoom table */
CREATE UNIQUE INDEX IX_EXERCISEROOM_EXERCISEROOMNAME ON exerciseRoom(exerciseRoomName)

/* Index on dayCareName from dayCare table */
CREATE UNIQUE INDEX IX_DAYCARE_DAYCARENAME ON dayCare(dayCareName)

/* Index on familyUnitName and dateOfArrival from familyUnit table, includes numberOfMembers */
CREATE INDEX IX_FAMILYUNIT_FAMILYUNITNAME_DATEOFARRIVAL ON familyUnit(familyUnitName, dateOfArrival) include (numberOfMembers)

/* Index on roomNumber and dateOfArrival from room table */
CREATE UNIQUE INDEX IX_ROOM_ROOMNUMBER ON room(roomNumber)

/* Index on dateOfBirth from resident table, includes isEmployed and isMale */
CREATE INDEX IX_RESIDENT_DATEOFBIRTH ON resident(dateOfBirth) include (isEmployed, isMale)

/* Index on dateOfBirth from employee table, includes isMale */
CREATE INDEX IX_EMPLOYEE_DATEOFBIRTH ON employee(dateOfBirth) include (isMale)
