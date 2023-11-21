-- Create new table R_08
CREATE TABLE R_08 (
    CustomerID INT,
    CustomerBirthDate DATE
);

-- Insert results into table R_08
INSERT INTO R_08 (CustomerID, CustomerBirthDate)
SELECT CustomerID, CustomerBirthDate
FROM Customer
WHERE CustomerBirthDate < DATEADD(YEAR, -120, GETDATE()) OR CustomerBirthDate > DATEADD(YEAR, -18, GETDATE());
