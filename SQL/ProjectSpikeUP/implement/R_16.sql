-- Create new table R_16
CREATE TABLE R_16 (
    ProductID INT,
    ProductName VARCHAR(255),
    DiscountedPrice FLOAT,
    ListedPrice FLOAT
);

-- Insert results into table R_16
INSERT INTO R_16 (ProductID, ProductName, DiscountedPrice, ListedPrice)
SELECT p.ProductID, p.ProductName, p.DiscountedPrice, p.ListedPrice
FROM Product p
WHERE p.DiscountedPrice > p.ListedPrice;
