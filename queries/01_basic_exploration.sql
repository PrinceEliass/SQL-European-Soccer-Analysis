- 01. Basic Exploration - European Soccer Database

- Description: Basic overview of the dataset (players, teams, leagues)
- Goal: Show data volume and basic statistics

SELECT 
    (SELECT COUNT(*) FROM player) AS total_players,
    (SELECT COUNT(*) FROM team) AS total_teams,
    (SELECT COUNT(*) FROM league) AS total_leagues,
    (SELECT COUNT(*) FROM player_attributes) AS total_player_attributes,
    (SELECT COUNT(DISTINCT season) FROM match) AS total_seasons;  -- Note: if match table is empty, this may return 0
