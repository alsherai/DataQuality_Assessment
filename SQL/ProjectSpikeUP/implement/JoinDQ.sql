--ALTER TABLE [dbo].[dq]
--ADD PreResult FLOAT;

UPDATE [dbo].[dq]
SET dq.PreResult = v.PreResults
FROM [dbo].[dq]
INNER JOIN [dbo].[RuleSummaryView] v ON [dbo].[dq].Rule_ID = v.RuleID;



