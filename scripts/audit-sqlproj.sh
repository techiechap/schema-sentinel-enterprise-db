#!/usr/bin/env bash
set -euo pipefail

echo "SQL files on disk:"
find AcmeCore -name "*.sql" | sort

echo ""
echo "SQLProj Build includes:"
grep -R "Build Include" AcmeCore/AcmeCore.sqlproj || true

echo ""
echo "Expected demo finding:"
echo "AcmeCore/migrations/V003_add_payment_risk_score.sql exists but is not included in AcmeCore.sqlproj"
