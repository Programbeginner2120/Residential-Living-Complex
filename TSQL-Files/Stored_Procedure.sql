

CREATE PROCEDURE [dbo].[deleteObseletePhoneNumbers] (@areaCode CHAR(3)) /* Stored procedure to delete resident phone number rows based on area code */
AS
BEGIN
    BEGIN TRANSACTION;
    SAVE TRANSACTION MySavePoint;
    BEGIN TRY
            SELECT * FROM residentPhoneNumber WHERE phoneNumber LIKE (@areaCode + '%') -- Selects the rows to be deleted to display upon execution of stored procedure
            ORDER BY residentPhoneNumberId
            DELETE FROM residentPhoneNumber WHERE phoneNumber LIKE (@areaCode + '%')
            COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT = 0 -- If no phone numbers were deleted, I want to make a note of that and check why that may be
        BEGIN
            ROLLBACK TRANSACTION MySavePoint; /* rollback to intial point before transaction */
        END
    END CATCH
END
