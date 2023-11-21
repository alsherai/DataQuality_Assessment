-- Create new table R_09
CREATE TABLE R_09 (
    OrderID INT,
    OrderDate DATE
);

-- Insert results into table R_09
INSERT INTO R_09 (OrderID, OrderDate)
SELECT OrderID, OrderDate
FROM [IPEA].[dbo].[Order_Details]
WHERE OrderDate > GETDATE();