-- Create duplicate ProductID values R_03

CREATE TABLE R_03 (
    ProductID tinyint,
    DuplicateCount INT
);

-- Find duplicate CustomerID values and insert into R_02
INSERT INTO R_03 (ProductID, DuplicateCount)
SELECT ProductID, COUNT(*)
FROM Product
GROUP BY ProductID
HAVING COUNT(*) > 1;