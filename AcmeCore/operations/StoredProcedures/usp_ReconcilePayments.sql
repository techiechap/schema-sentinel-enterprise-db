CREATE PROCEDURE [operations].[usp_ReconcilePayments]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT COUNT(*) AS PaymentCount
    FROM [dbo].[Payment];
END;
