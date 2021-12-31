USE [residentialLivingComplex];
GO

CREATE TABLE residentialComplexBuilding (
complexId int not null identity primary key,
complexName VARCHAR(50) not null,
complexPhoneNumber CHAR(12) not null)

CREATE TABLE address (
addressId int not null identity primary key,
address VARCHAR(120) not null,
city VARCHAR(30) not null,
state CHAR(2) not null,
country VARCHAR(30) not null,
zipAndPostalCode CHAR(10) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE recreationLounge (
recLoungeId int not null identity primary key,
recLoungeName VARCHAR(50) not null,
recLoungePhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE workAndComputerCenter (
workCompId int not null identity primary key,
workCompName VARCHAR(50) not null,
workCompPhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE exerciseRoom (
exerciseRoomId int not null identity primary key,
exerciseRoomName VARCHAR(50) not null,
exerciseRoomPhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE dayCare (
dayCareId int not null identity primary key,
dayCareName VARCHAR(50) not null,
dayCarePhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE parkingArea (
parkingAreaId int not null identity primary key,
parkingAreaName VARCHAR(50) not null,
parkingAreaPhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE snackBar (
snackBarId int not null identity primary key,
snackBarName VARCHAR(50) not null,
snackBarPhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE pool (
poolId int not null identity primary key,
poolName VARCHAR(50) not null,
poolPhoneNumber CHAR(12) not null,
snackBarId int not null foreign key references snackBar(snackBarId),
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE playground (
playgroundId int not null identity primary key,
playgroundName VARCHAR(50) not null,
playgroundPhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE restaurant (
restaurantId int not null identity primary key,
restaurantName VARCHAR(50) not null,
restaurantPhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE familyUnit (
familyUnitId int not null identity primary key,
familyUnitName VARCHAR (50) not null,
numberOfMembers TINYINT not null,
dateOfArrival DATETIME not null,
dateOfDeparture DATETIME null, 
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE floor (
floorId int not null identity primary key,
floorNumber CHAR(1) not null,
familyUnitId int not null foreign key references familyUnit(familyUnitId),
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE roomType (
roomTypeId int not null identity primary key,
roomDescription VARCHAR(30) not null)

CREATE TABLE room (
roomId int not null identity primary key,
roomNumber CHAR(3) not null,
roomPhoneNumber CHAR(12) not null,
familyUnitId int not null foreign key references familyUnit(familyUnitId),
roomTypeId int not null foreign key references roomType(roomTypeId),
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE resident (
residentId int not null identity primary key,
firstName VARCHAR(30) not null,
middleInitial CHAR(1) null,
lastName VARCHAR (50) not null,
dateOfBirth DATETIME not null,
isEmployed BIT not null,
familyUnitId int not null foreign key references familyUnit(familyUnitId),
roomId int not null foreign key references room(roomId),
dayCareId int not null foreign key references dayCare(dayCareId),
snackBarId int not null foreign key references snackBar(snackBarId),
poolId int not null foreign key references pool(poolId),
restaurantId int not null foreign key references restaurant(restaurantId),
complexId int not null foreign key references residentialComplexBuilding(complexId),
playgroundId int not null foreign key references playground(playgroundId))

CREATE TABLE residentPhoneNumber (
residentPhoneNumberId int not null identity primary key,
phoneNumber CHAR(12) not null,
residentId int not null foreign key references resident(residentId))

CREATE TABLE buildingManager (
managerId int not null identity primary key,
firstName VARCHAR(30) not null,
middleInitial CHAR(1) null,
lastName VARCHAR(50) not null,
dateOfBirth DATETIME not null,
buildingManagerPhoneNumber CHAR(12) not null,
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE employee (
employeeId int not null identity primary key,
firstName VARCHAR(30) not null,
middleInitial CHAR(1) null,
lastName VARCHAR(50) not null,
dateOfBirth DATETIME not null,
employeePhoneNumber CHAR(12) not null,
recLoungeId int null foreign key references recreationLounge(recLoungeId),
workCompId int null foreign key references workAndComputerCenter(workCompId),
exerciseRoomId int null foreign key references exerciseRoom(exerciseRoomId),
parkingAreaId int null foreign key references parkingArea(parkingAreaId),
dayCareId int null foreign key references dayCare(dayCareId),
snackBarId int null foreign key references snackBar(snackBarId),
poolId int null foreign key references pool(poolId),
playground int null foreign key references playground(playgroundId),
restaurantId int null foreign key references restaurant(restaurantId),
managerId int not null foreign key references buildingManager(managerId),
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE facilityCheckIn (
facilityCheckInId int not null identity primary key,
residentId int not null foreign key references resident(residentId),
recLoungeId int null foreign key references recreationLounge(recLoungeId),
workCompId int null foreign key references workAndComputerCenter(workCompId),
exerciseRoomId int null foreign key references exerciseRoom(exerciseRoomId),
parkingAreaId int null foreign key references parkingArea(parkingAreaId),
dayCareId int null foreign key references dayCare(dayCareId),
snackBarId int null foreign key references snackBar(snackBarId),
poolId int null foreign key references pool(poolId),
playgroundId int null foreign key references playground(playgroundId),
restaurantId int null foreign key references restaurant(restaurantId),
complexId int not null foreign key references residentialComplexBuilding(complexId))

CREATE TABLE residentEmployee (
residentEmployeeId int not null identity primary key,
residentId int not null foreign key references resident(residentId),
employeeId int not null foreign key references employee(employeeId))
