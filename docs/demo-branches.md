# Demo Branches

This repository contains synthetic branches used to demonstrate SchemaSentinel release-risk detection.

## Branches

### main

Baseline synthetic SQL Server-style database project.

### feature/payment-risk-score

Adds a new migration file:

- `AcmeCore/migrations/V003_add_payment_risk_score.sql`

Intentional risk:

- migration exists on disk
- migration is not included in `AcmeCore.sqlproj`
- stored procedure references `[dbo].[PaymentRisk]`
- simulates SQL71501 / DACPAC unresolved-reference risk

### feature/payment-audit-trigger

Adds a new database trigger:

- `AcmeCore/Database Triggers/trg_AuditPaymentRisk.sql`

Intentional risk:

- new SQL file exists on disk
- trigger is not included in `AcmeCore.sqlproj`
- touches Payment-related release behavior in parallel with other branches

### feature/reconcile-payment-refactor

Changes:

- `AcmeCore/operations/StoredProcedures/usp_ReconcilePayments.sql`

Intentional risk:

- modifies Payment-related logic while other branches add PaymentRisk behavior
- demonstrates possible object-collision and ownership risk

## Purpose

These branches are fully synthetic and contain no real client data, schema names, wiki notes, or confidential implementation details.

They exist only to demonstrate database release-risk patterns that SchemaSentinel is designed to detect before merge.
