CREATE TABLE [dbo].[Payment] (
    [PaymentId] INT NOT NULL PRIMARY KEY,
    [CustomerId] INT NOT NULL,
    [Amount] DECIMAL(18,2) NOT NULL,
    [CreatedAtUtc] DATETIME2 NOT NULL
);
