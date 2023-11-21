-- Create new table R_12
CREATE TABLE R_12 (
    OrderID INT,
    Quantity INT
);

-- Insert results into table R_12
INSERT INTO R_12 (OrderID, Quantity)
SELECT OrderID, Quantity
FROM [dbo].[Order_Details]
WHERE Quantity < 0;
