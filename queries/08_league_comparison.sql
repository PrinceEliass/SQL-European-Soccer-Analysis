- 08. League Comparison

- Description: Quality comparison between different leagues

SELECT 
    l.name AS league_name,
    COUNT(DISTINCT p.player_api_id) AS total_unique_players,
    ROUND(AVG(pa.overall_rating), 2) AS avg_player_rating,
    ROUND(AVG(pa.potential), 2) AS avg_potential,
    COUNT(CASE WHEN pa.overall_rating >= 75 THEN 1 END) AS star_players
FROM league l
JOIN player_attributes pa ON true
JOIN player p ON p.player_api_id = pa.player_api_id
GROUP BY l.name
ORDER BY avg_player_rating DESC;
