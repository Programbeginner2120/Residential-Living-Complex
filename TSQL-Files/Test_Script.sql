USE [residentialLivingComplex];
GO

SELECT dbo.dateOfBirthToAge(dateOfBirth) AS age FROM resident /* testing scalar function */
ORDER BY age DESC

SELECT * FROM dbo.getDateOfBirthAndAge() /* testing MLTVF */
ORDER BY age DESC

SELECT * FROM dbo.getDateOfBirthAndAgeIL() /* testing in line function */
ORDER BY age DESC

INSERT INTO residentPhoneNumber /* inserting rows into residentPhoneNumber to be deleted through stored procedure */
  (phoneNumber, residentId)
VALUES
  ('516-488-3333', 1),
  ('516-488-3433', 2),
  ('516-484-1233', 3),
  ('516-488-6433', 4);

EXEC dbo.deleteObseletePhoneNumbers @areaCode = '516' /* Testing of stored procedure */
