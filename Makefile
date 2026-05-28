.PHONY: audit tree status

audit:
	./scripts/audit-sqlproj.sh

tree:
	find . -path ./.git -prune -o -type f -print | sort

status:
	git status --short
