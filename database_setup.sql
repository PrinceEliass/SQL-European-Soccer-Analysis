-- =============================================
-- DATABASE SETUP - European Soccer Database
-- =============================================
-- Author: [Elias Borchert]
-- Created: May 2026
-- Description: Setup file for the European Soccer Analysis project

-- Note: Tables were created directly in pgAdmin using CREATE TABLE statements
-- All tables (country, league, team, player, player_attributes, team_attributes) 
-- have been successfully populated from Kaggle CSV files.

-- For full table definitions, see the individual query files or pgAdmin schema browser.

COMMENT ON DATABASE european_soccer IS 'European Soccer Database (Kaggle) - SQL Portfolio Project';

-- Quick check queries
SELECT 'Database setup completed successfully' AS status;
SELECT 
    table_name,
    (SELECT COUNT(*) FROM information_schema.columns WHERE table_name = t.table_name) as column_count
FROM information_schema.tables t
WHERE table_schema = 'public'
ORDER BY table_name;
