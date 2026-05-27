# SchemaSentinel Demo Enterprise DB

Synthetic SQL Server-style database project used to demonstrate SchemaSentinel.

This repo intentionally contains safe, fake database release-risk patterns:

- SQL file exists on disk but is missing from `.sqlproj`
- stored procedure references an object that may not be in the DACPAC model
- simulated SQL71501 / SQL70001 / Msg 213 style failure patterns
- missing rollback and deployment evidence
- pipeline fails before release

No real client names, schemas, data, code, wiki notes, or confidential content are included.
