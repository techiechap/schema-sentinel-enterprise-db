CREATE TRIGGER [dbo].[trg_AuditPayment]
ON [dbo].[Payment]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
END;
