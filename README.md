# Malaysia Education Performance Analysis

An exploratory analysis of Malaysia's education indicators, using the World Bank EdStats dataset, with a focus on understanding how Malaysia's PISA performance compares to regional peers like Vietnam.

## Goal

To examine whether Malaysia's PISA performance gap against countries like Vietnam is significant or minor, and to narrow down which macro-level education and economic indicators are plausibly associated with the difference. This is exploratory, findings here are meant to surface hypotheses worth digging into further, not to be conclusive on their own.

A separate, later phase of this project will pull PISA-specific microdata and apply machine learning to test candidate factors more rigorously, since the macro panel data here isn't well suited to that (too few rows, macro-level only).

## Dataset

Source: World Bank EdStats — https://www.kaggle.com/datasets/theworldbank/education-statistics

Not included in this repo (see `.gitignore`); download it from the link above and place it in a `data/` folder to reproduce the analysis.

## Contents

- `analysis-notebook/` — main notebook(s): data loading, wide-to-long reshaping (`melt`), cleaning, exploratory data analysis, and visualization
- `docker-compose.yml` — spins up the full stack, no local install needed:
  - `database` — PostgreSQL, holds the working dataset
  - `admin-gui` — pgAdmin, for inspecting/querying the database visually
  - `code-editor` — Jupyter (datascience-notebook), where the analysis happens

## Status

Work in progress. The dataset has been reshaped from wide to long format (star schema: fact table + dimension tables) and exploratory data analysis is underway — checking indicator coverage, nulls, and cardinality before narrowing down to PISA and related indicators for Malaysia and Vietnam. Visualization and comparison to follow, with modeling deferred to a separate PISA-microdata phase.

## Running

Requires Docker and Docker Compose installed. No manual dependency installation needed — everything runs in the containers.

Create a `.env` file in the project root with:
```
POSTGRES_USER=your_user
POSTGRES_PASSWORD=your_password
POSTGRES_DB=your_db
PGADMIN_DEFAULT_EMAIL=your_email@example.com
PGADMIN_DEFAULT_PASSWORD=your_password
```

Start the stack:
```bash
docker compose up
```

Access:
- Jupyter: http://localhost:8888 (no token/password required)
- pgAdmin: http://localhost:80
