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
            foreign_keys.name = 'FK_ProductModelProductDescriptionCulture_ProductDescription_ProductDescriptionID' AND
            schemas.name = 'Production'
    )
    ALTER TABLE [Production].[ProductModelProductDescriptionCulture] WITH CHECK ADD CONSTRAINT [FK_ProductModelProductDescriptionCulture_ProductDescription_ProductDescriptionID] FOREIGN KEY ([ProductDescriptionID])
    REFERENCES [Production].[ProductDescription] ([ProductDescriptionID])
GO
