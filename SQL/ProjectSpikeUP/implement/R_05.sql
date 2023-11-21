CREATE TABLE R_05 (
    ProductID tinyint,
    ProductCategory nvarchar(50),
    ListedPrice float
);

-- Find products with DiscountedPrice outside ± 2 standard deviations of mean and insert into R_05
INSERT INTO R_05 (ProductID, ProductCategory, ListedPrice)

SELECT ProductID, p.ProductCategory, ListedPrice
  FROM [IPEA].[dbo].[Product] p
JOIN (
    SELECT ProductCategory, AVG(ListedPrice) AS MeanListedPrice, STDEV(ListedPrice) AS StdDevListedPrice
	FROM [IPEA].[dbo].[Product]
    GROUP BY ProductCategory
) stats ON p.ProductCategory = stats.ProductCategory
WHERE p.ListedPrice < stats.MeanListedPrice - 2 * stats.StdDevListedPrice
   OR p.ListedPrice > stats.MeanListedPrice + 2 * stats.StdDevListedPrice;
