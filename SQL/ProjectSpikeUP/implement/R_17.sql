-- Create new table R_17
CREATE TABLE R_17 (
    CustomerID INT,
    CustomerCity VARCHAR(255),
    CustomerState VARCHAR(255)
);

-- Insert results into table R_17
INSERT INTO R_17 (CustomerID, CustomerCity, CustomerState)
SELECT c.CustomerID, c.CustomerCity, c.CustomerState
FROM Customer c
WHERE c.CustomerCity IS NOT NULL AND c.CustomerState IS NOT NULL
  AND c.CustomerCity NOT LIKE '%' + c.CustomerState + '%';

