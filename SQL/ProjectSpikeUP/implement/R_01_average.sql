Select *,[rAvr] = CASE WHEN [NullRows] <> 0 THEN  ([NullRows] / [TotalRows]) *1.0 ELSE 0 END
from [IPEA].[dbo].[R_01];

Go
-- Add the Average column to the R_01 table
ALTER TABLE [IPEA].[dbo].[R_01]
ADD [rAvr] FLOAT; -- Adjust the data type based on your needs

Go
-- Update the values in the Average column
UPDATE [IPEA].[dbo].[R_01]
SET [rAvr] = CASE WHEN [NullRows] <> 0 THEN ([NullRows] / [TotalRows]) *1.0 ELSE 0 END;
