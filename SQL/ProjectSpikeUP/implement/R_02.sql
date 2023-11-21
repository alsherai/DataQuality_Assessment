-- Create the R_02 table
CREATE TABLE R_02 (
    CustomerID INT,
    DuplicateCount INT
);

-- Find duplicate CustomerID values and insert into R_02
INSERT INTO R_02 (CustomerID, DuplicateCount)
SELECT CustomerID, COUNT(*)
FROM Customer
GROUP BY CustomerID
HAVING COUNT(*) > 1;
