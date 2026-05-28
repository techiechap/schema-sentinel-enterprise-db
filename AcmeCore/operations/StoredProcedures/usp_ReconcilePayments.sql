CREATE PROCEDURE [operations].[usp_ReconcilePayments]
AS
BEGIN
    SET NOCOUNT ON;

    -- Demo object-collision risk:
    -- This branch changes Payment reconciliation while another branch adds PaymentRisk.
    SELECT
        p.CustomerId,
        COUNT(*) AS PaymentCount,
        SUM(p.Amount) AS TotalAmount
    FROM [dbo].[Payment] p
    GROUP BY p.CustomerId;
END;
