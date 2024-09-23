makevenv:
	python3 -m venv .venv

venv:
	source .venv/bin/activate

briefer:
	briefer

debug:
	dbt debug

run:
	dbt run
