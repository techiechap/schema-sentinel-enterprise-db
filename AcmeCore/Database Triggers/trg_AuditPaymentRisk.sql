CREATE TRIGGER [dbo].[trg_AuditPaymentRisk]
ON [dbo].[Payment]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Demo branch risk:
    -- Another branch is also changing Payment-related release behavior.
    -- This file is intentionally not included in AcmeCore.sqlproj.
END;
