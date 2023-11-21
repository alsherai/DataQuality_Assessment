-- Create new table R_10
CREATE TABLE R_10 (
    ProductID INT,
    DiscountedPrice FLOAT
);

-- Insert results into table R_10
INSERT INTO R_10 (ProductID, DiscountedPrice)
SELECT ProductID, DiscountedPrice
FROM [dbo].[Product]
WHERE DiscountedPrice < 0;
