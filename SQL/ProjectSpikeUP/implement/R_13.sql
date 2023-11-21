-- Create new table R_13
CREATE TABLE R_13 (
    CustomerID INT,
    CustomerCity VARCHAR(255)
);

-- Insert results into table R_13
INSERT INTO R_13 (CustomerID, CustomerCity)
SELECT CustomerID, CustomerCity
FROM [dbo].[Customer]
WHERE CustomerCity NOT IN ('Atlanta', 'Boston', 'Chicago', 'Dallas', 'Denver', 'Las Vegas', 'Los Angeles', 'Nashville', 'New York', 'Orlando', 'Philadelphia', 'Phoenix', 'Portland', 'Richmond', 'San Francisco', 'Seattle');
