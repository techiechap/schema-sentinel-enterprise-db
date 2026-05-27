CREATE PROCEDURE [dbo].[usp_UpdatePaymentRisk]
AS
BEGIN
    SET NOCOUNT ON;

    -- Demo risk: PaymentRisk is created in a migration file,
    -- but that file is intentionally missing from AcmeCore.sqlproj.
    UPDATE pr
    SET pr.LastEvaluatedUtc = SYSUTCDATETIME()
    FROM [dbo].[PaymentRisk] pr
    INNER JOIN [dbo].[Payment] p
        ON p.PaymentId = pr.PaymentId;
END;
