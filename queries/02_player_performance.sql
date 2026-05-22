- 02. Player Performance Analysis

- Description: Overall player statistics and skill averages

SELECT 
    ROUND(AVG(overall_rating), 2) AS avg_overall_rating,
    ROUND(AVG(potential), 2) AS avg_potential,
    ROUND(AVG(stamina), 2) AS avg_stamina,
    ROUND(AVG(finishing), 2) AS avg_finishing,
    COUNT(*) AS total_records
FROM player_attributes;
