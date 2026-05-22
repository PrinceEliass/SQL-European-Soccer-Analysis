- 06. Player Loyalty & Churn Analysis

- Description: How long players stay with the same team (approximation)

WITH player_team AS (
    SELECT 
        p.player_name,
        t.team_long_name,
        MIN(pa.date) as first_appearance,
        MAX(pa.date) as last_appearance,
        COUNT(DISTINCT DATE_TRUNC('year', pa.date)) as active_years
    FROM player_attributes pa
    JOIN player p ON p.player_api_id = pa.player_api_id
    JOIN team t ON t.team_api_id = (pa.player_api_id % 10000 + 1000) -- approximation
    GROUP BY p.player_name, t.team_long_name
)
SELECT *
FROM player_team
ORDER BY active_years DESC
LIMIT 15;
