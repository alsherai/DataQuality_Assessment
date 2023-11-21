-- Create new table R_11
CREATE TABLE R_11 (
    ProductID INT,
    ListedPrice FLOAT
);

-- Insert results into table R_11
INSERT INTO R_11 (ProductID, ListedPrice)
SELECT ProductID, ListedPrice
FROM [dbo].[Product]t
WHERE ListedPrice < 0;
