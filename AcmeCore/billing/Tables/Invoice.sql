CREATE TABLE [billing].[Invoice] (
    [InvoiceId] INT NOT NULL PRIMARY KEY,
    [PaymentId] INT NOT NULL,
    [InvoiceNumber] NVARCHAR(50) NOT NULL
);
