USE [residentialLivingComplex];
GO

MERGE INTO snackBar sb
    USING (VALUES ('Jimmy Neutron Snack Bar', '516-555-5555', 1)) AS newsb (snackBarName, snackBarPhoneNumber, complexId)
ON (sb.snackBarName = newsb.snackBarName AND sb.snackBarPhoneNumber = newsb.snackBarPhoneNumber AND sb.complexId = newsb.complexId)
WHEN MATCHED
    THEN UPDATE SET
        sb.snackBarName = newsb.snackBarName, sb.snackBarPhoneNumber = newsb.snackBarPhoneNumber, sb.complexId = newsb.complexId
WHEN NOT MATCHED THEN INSERT (snackBarName, snackBarPhoneNumber, complexId) VALUES (newsb.snackBarName, newsb.snackBarPhoneNumber, newsb.complexId);

/* Used to update existing snack bar or insert new snack bar based upon inputted values */
