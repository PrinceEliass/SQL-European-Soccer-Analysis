# SQL Portfolio - European Soccer Database Analysis

Advanced SQL analysis on the **European Soccer Database** (Kaggle) using **PostgreSQL**.

## Project Overview

This project demonstrates advanced SQL skills through comprehensive analysis of European football data (2008–2016). The database contains information about players, teams, leagues and player attributes.

### Technologies Used
- **Database**: PostgreSQL 18
- **SQL Features**: CTEs, Window Functions, Aggregations, Joins, Subqueries, Ranking
- **Tools**: pgAdmin 4, DB Browser for SQLite

## Database Structure
- `player` — Player basic information
- `player_attributes` — Detailed FIFA attributes (overall rating, potential, skills etc.)
- `team` & `team_attributes` — Team information and playing styles
- `league` & `country` — League and country data

## Query Folder Structure

| File | Description |
|------|-------------|
| `01_basic_exploration.sql` | Basic dataset overview and statistics |
| `02_player_performance.sql` | Overall player skill analysis |
| `03_top_players.sql` | Top 10 players by overall rating |
| `04_player_development.sql` | Player improvement and career growth analysis |
| `05_team_analysis.sql` | Team playing style comparison |
| `06_loyalty_churn.sql` | Player loyalty and team stability |
| `07_advanced_analytics.sql` | Advanced analytics with Window Functions |
| `08_league_comparison.sql` | League quality and player level comparison |

## Key Highlights & Skills Demonstrated

- **Window Functions** (`RANK()`, `ROW_NUMBER()`, `LAG()`, moving averages)
- **Common Table Expressions (CTEs)** for complex multi-step analysis
- **Player development tracking** over time
- **Ranking and Top-N analysis**
- **Business-oriented insights** (player potential vs performance, team styles, loyalty)

## Screenshots

All query results are available in the `screenshots/` folder (9 screenshots from advanced queries).

## Learning Outcomes

- Designed and populated a relational database from Kaggle dataset
- Wrote clean, readable, and well-documented SQL code
- Performed complex analytical queries relevant to sports data analysis and business intelligence
- Used advanced SQL techniques suitable for Data Analyst roles

## How to Run

1. Create PostgreSQL database `european_soccer`
2. Run `database_setup.sql` to create tables
3. Import CSV files or restore from backup
4. Run queries from `queries/` folder

---
