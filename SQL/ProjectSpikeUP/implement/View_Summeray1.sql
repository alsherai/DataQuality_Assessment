IF OBJECT_ID('RuleSummaryView', 'V') IS NOT NULL
    DROP VIEW RuleSummaryView;
GO

CREATE VIEW RuleSummaryView AS
SELECT
    'R_01' AS RuleID,
    (SELECT sum(NullRows) FROM R_01) AS RuleCount,
    'All CDEs' AS DAMADimension,
    5124 AS SourceTableCount,
    0 AS FailingPercentageThreshold,
	Format(((Select sum(NullRows) from R_01) / 5124.0),'N4') As PreResults 
UNION ALL
SELECT
    'R_02' AS RuleID,
    (SELECT COUNT(*) FROM R_02) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_02) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2') AS PreResult

UNION ALL
SELECT
    'R_03' AS RuleID,
    (SELECT COUNT(*) FROM R_03) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_03) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_04' AS RuleID,
    (SELECT COUNT(*) FROM R_04) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_04) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N4')AS PreResult
UNION ALL
SELECT
    'R_05' AS RuleID,
    (SELECT COUNT(*) FROM R_05) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_05) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_06' AS RuleID,
    (SELECT COUNT(*) FROM R_06) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_06) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_07' AS RuleID,
    (SELECT COUNT(*) FROM R_07) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_07) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N2')AS PreResult
UNION ALL
SELECT
    'R_08' AS RuleID,
    (SELECT COUNT(*) FROM R_08) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_08) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult
UNION ALL
SELECT
    'R_09' AS RuleID,
    (SELECT COUNT(*) FROM R_09) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_09) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N3')AS PreResult
UNION ALL
SELECT
    'R_10' AS RuleID,
    (SELECT COUNT(*) FROM R_10) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_10) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_11' AS RuleID,
    (SELECT COUNT(*) FROM R_11) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_11) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_12' AS RuleID,
    (SELECT COUNT(*) FROM R_12) AS RuleCount,
    'Order_Details' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_12) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Order_Details]),'N2')AS PreResult
UNION ALL
SELECT
    'R_13' AS RuleID,
    (SELECT COUNT(*) FROM R_13) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_13) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult
UNION ALL
SELECT
    'R_14' AS RuleID,
    (SELECT COUNT(*) FROM R_14) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_14) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult
UNION ALL
SELECT
    'R_15' AS RuleID,
    (SELECT COUNT(*) FROM R_15) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    0 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_15) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_16' AS RuleID,
    (SELECT COUNT(*) FROM R_16) AS RuleCount,
    'Product' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_16) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Product]),'N2')AS PreResult
UNION ALL
SELECT
    'R_17' AS RuleID,
    (SELECT COUNT(*) FROM R_17) AS RuleCount,
    'Customer' AS DAMADimension,
    (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]) AS SourceTableCount,
    5 AS FailingPercentageThreshold,
    Format((SELECT COUNT(*) FROM R_17) * 1.0 / (SELECT COUNT(*) FROM [IPEA].[dbo].[Customer]),'N2')AS PreResult

Go

SELECT * FROM RuleSummaryView;

