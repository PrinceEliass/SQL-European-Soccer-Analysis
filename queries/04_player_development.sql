- 04. Player Development & Growth Analysis

- Description: Which players improved the most during their career?

WITH player_progress AS (
    SELECT 
        p.player_name,
        MIN(pa.date) as career_start,
        MAX(pa.date) as career_end,
        MAX(pa.overall_rating) as peak_rating,
        MAX(pa.potential) as max_potential,
        MAX(pa.overall_rating) - MIN(pa.overall_rating) as rating_improvement
    FROM player_attributes pa
    JOIN player p ON p.player_api_id = pa.player_api_id
    GROUP BY p.player_name
)
SELECT *
FROM player_progress
WHERE rating_improvement > 8
ORDER BY rating_improvement DESC
LIMIT 15;
