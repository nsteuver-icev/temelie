﻿
IF NOT EXISTS
    (
        SELECT
            1
        FROM
            sys.foreign_keys INNER JOIN
            sys.schemas ON
                foreign_keys.schema_id = schemas.schema_id
        WHERE
            foreign_keys.name = 'FK_EmailAddress_Person_BusinessEntityID' AND
            schemas.name = 'Person'
    )
    ALTER TABLE [Person].[EmailAddress] WITH CHECK ADD CONSTRAINT [FK_EmailAddress_Person_BusinessEntityID] FOREIGN KEY ([BusinessEntityID])
    REFERENCES [Person].[Person] ([BusinessEntityID])
GO
