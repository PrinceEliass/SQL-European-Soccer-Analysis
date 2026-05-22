- 03. Top 10 Players by Overall Rating

- Description: Current top players using latest attributes

WITH latest_attributes AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY player_api_id ORDER BY date DESC) as rn
    FROM player_attributes
)
SELECT 
    p.player_name,
    la.overall_rating,
    la.potential,
    la.preferred_foot,
    la.date AS attribute_date
FROM latest_attributes la
JOIN player p ON p.player_api_id = la.player_api_id
WHERE la.rn = 1
ORDER BY la.overall_rating DESC
LIMIT 10;
