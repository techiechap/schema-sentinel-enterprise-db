CREATE VIEW [customer].[vw_CustomerSummary]
AS
SELECT
    c.CustomerId,
    c.CustomerName
FROM [dbo].[Customer] c;
