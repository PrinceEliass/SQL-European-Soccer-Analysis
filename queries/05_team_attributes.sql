- 05. Team Attributes Analysis

- Description: Comparison of team playing styles

SELECT 
    t.team_long_name,
    ROUND(AVG(ta.buildUpPlaySpeed), 2) AS avg_buildup_speed,
    ROUND(AVG(ta.chanceCreationPassing), 2) AS avg_chance_creation,
    ROUND(AVG(ta.defencePressure), 2) AS avg_defence_pressure,
    COUNT(*) AS records
FROM team_attributes ta
JOIN team t ON t.team_api_id = ta.team_api_id
GROUP BY t.team_long_name
ORDER BY avg_chance_creation DESC
LIMIT 10;
