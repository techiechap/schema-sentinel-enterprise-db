CREATE TABLE [dbo].[Customer] (
    [CustomerId] INT NOT NULL PRIMARY KEY,
    [CustomerName] NVARCHAR(200) NOT NULL,
    [CreatedAtUtc] DATETIME2 NOT NULL
);
