-- Create duplicate OrderID values R_04

CREATE TABLE R_04 (
    OrderID smallint,
    DuplicateCount INT
);

-- Find duplicate CustomerID values and insert into R_02
INSERT INTO R_04 (OrderID, DuplicateCount)
SELECT OrderID, COUNT(*)
FROM Order_Details
GROUP BY OrderID
HAVING COUNT(*) > 1;