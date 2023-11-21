CREATE TABLE R_06 (
    ProductID tinyint,
    ProductCategory nvarchar(50),
    DiscountedPrice float
);

-- Find products with DiscountedPrice outside ± 2 standard deviations of mean and insert into R_06
INSERT INTO R_06 (ProductID, ProductCategory, DiscountedPrice)

SELECT ProductID, p.ProductCategory, DiscountedPrice
  FROM [IPEA].[dbo].[Product] p
JOIN (
    SELECT ProductCategory, AVG(DiscountedPrice) AS MeanDiscountedPrice, STDEV(DiscountedPrice) AS StdDevDiscountedPrice
	FROM [IPEA].[dbo].[Product]
    GROUP BY ProductCategory
) stats ON p.ProductCategory = stats.ProductCategory
WHERE p.DiscountedPrice < stats.MeanDiscountedPrice - 2 * stats.StdDevDiscountedPrice
   OR p.DiscountedPrice > stats.MeanDiscountedPrice + 2 * stats.StdDevDiscountedPrice;
