CREATE TABLE [dbo].[PaymentRisk] (
    [PaymentRiskId] INT NOT NULL PRIMARY KEY,
    [PaymentId] INT NOT NULL,
    [RiskScore] INT NOT NULL,
    [LastEvaluatedUtc] DATETIME2 NULL
);
