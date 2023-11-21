-- Create new table R_14
CREATE TABLE R_14 (
    CustomerID INT,
    CustomerState VARCHAR(255)
);

-- Insert results into table R_14
INSERT INTO R_14 (CustomerID, CustomerState)
SELECT CustomerID, CustomerState
FROM [dbo].[Customer]
WHERE CustomerState NOT IN ('Arizona', 'California', 'Colorado', 'Florida', 'Georgia', 'Illinois', 'Massachusetts', 'Nevada', 'New York', 'Oregon', 'Pennsylvania', 'Tennessee', 'Texas', 'Virginia', 'Washington');
