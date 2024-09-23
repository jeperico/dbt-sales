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

docs:
    dbt docs generate

rundocs:
    dbt docs serve --port 8081
