- 07. Advanced Window Functions

- Description: Player ranking within age groups + rolling average

WITH player_with_age AS (
    SELECT 
        p.player_name,
        pa.overall_rating,
        DATE_PART('year', AGE(pa.date, p.birthday)) AS age,
        pa.date
    FROM player p
    JOIN player_attributes pa ON p.player_api_id = pa.player_api_id
)
SELECT 
    age,
    player_name,
    overall_rating,
    RANK() OVER (PARTITION BY age ORDER BY overall_rating DESC) as rank_in_age_group,
    ROUND(AVG(overall_rating) OVER (PARTITION BY age ORDER BY date ROWS BETWEEN 3 PRECEDING AND CURRENT ROW), 2) as rolling_avg
FROM player_with_age
WHERE age BETWEEN 20 AND 30
ORDER BY age, rank_in_age_group
LIMIT 20;
