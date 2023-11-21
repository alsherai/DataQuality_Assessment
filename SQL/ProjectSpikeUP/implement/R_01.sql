-- Create a new table to store the aggregated results
IF OBJECT_ID('R_01', 'U') IS NOT NULL
    DROP TABLE R_01;

CREATE TABLE R_01 (
    TableName VARCHAR(255),
    ColumnName VARCHAR(255),
    TotalRows INT,
    NullRows INT
);

-- Declare variables for cursor
DECLARE @tableName VARCHAR(255);
DECLARE @columnName VARCHAR(255);
DECLARE @sqlQuery NVARCHAR(MAX);

-- List of tables to process
DECLARE @tablesToProcess TABLE (TableName VARCHAR(255));

-- Populate the list of tables to process
INSERT INTO @tablesToProcess (TableName)
VALUES ('Customer'), ('Order_Details'), ('Product');

-- Create a cursor to iterate through the specified tables
DECLARE tableCursor CURSOR FOR
SELECT TableName
FROM @tablesToProcess;

-- Open the cursor
OPEN tableCursor;

-- Loop through tables
FETCH NEXT FROM tableCursor INTO @tableName;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Create a cursor to iterate through columns
    DECLARE columnCursor CURSOR FOR
    SELECT COLUMN_NAME
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = @tableName;

    -- Open the column cursor
    OPEN columnCursor;

    -- Loop through columns
    FETCH NEXT FROM columnCursor INTO @columnName;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Create and execute dynamic SQL query for each column
        SET @sqlQuery = N'
            INSERT INTO R_01 (TableName, ColumnName, TotalRows, NullRows)
            SELECT 
                ''' + @tableName + ''',
                ''' + @columnName + ''',
                COUNT(*),
                COUNT(*) - COUNT([' + @columnName + ']) AS NullRowCount
            FROM [' + @tableName + '];
        ';

        EXEC sp_executesql @sqlQuery;

        FETCH NEXT FROM columnCursor INTO @columnName;
    END;

    -- Close and deallocate the column cursor
    CLOSE columnCursor;
    DEALLOCATE columnCursor;

    FETCH NEXT FROM tableCursor INTO @tableName;
END;

-- Close and deallocate the table cursor
CLOSE tableCursor;
DEALLOCATE tableCursor;
