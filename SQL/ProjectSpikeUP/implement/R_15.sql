-- Create new table R_15
CREATE TABLE R_15 (
    ProductID INT,
    ProductCategory VARCHAR(255)
);

-- Insert results into table R_15
INSERT INTO R_15 (ProductID, ProductCategory)
SELECT ProductID, ProductCategory
FROM Product
WHERE ProductCategory NOT IN ('Housekeeping', 'Office Supplies', 'Furnishings', 'Maintenance', 'Public Areas');
