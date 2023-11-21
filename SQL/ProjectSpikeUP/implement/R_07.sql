-- Create new table R_07
CREATE TABLE R_007 (
    SalesYear INT,
    SalesMonth INT,
    ProductID INT,
    TotalQuantity INT,
    MeanQuantity FLOAT,
    StdDevQuantity FLOAT
);

-- Insert results into table R_07
INSERT INTO R_007 (SalesYear, SalesMonth, ProductID, TotalQuantity, MeanQuantity, StdDevQuantity)
SELECT
    YEAR(od.OrderDate) AS SalesYear,
    MONTH(od.OrderDate) AS SalesMonth,
    od.ProductID,
    SUM(od.Quantity) AS TotalQuantity,
    AVG(od.Quantity) AS MeanQuantity,
    STDEV(od.Quantity) AS StdDevQuantity
FROM
    [IPEA].[dbo].[Order_Details] od
WHERE
    od.Quantity IS NOT NULL  -- Filter out NULL values
GROUP BY
    YEAR(od.OrderDate),
    MONTH(od.OrderDate),
    od.ProductID
HAVING
    SUM(od.Quantity) <= AVG(od.Quantity) - 3 * STDEV(od.Quantity)
    OR SUM(od.Quantity) >= AVG(od.Quantity) + 3 * STDEV(od.Quantity);
