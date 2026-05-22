-- =============================================
-- DATABASE SETUP - European Soccer Database
-- =============================================
-- Author: [Sinun Nimesi]
-- Date: May 2026
-- Description: Creates all tables for the European Soccer project

-- Drop tables if they exist (for re-running)
DROP TABLE IF EXISTS match CASCADE;
DROP TABLE IF EXISTS player_attributes CASCADE;
DROP TABLE IF EXISTS team_attributes CASCADE;
DROP TABLE IF EXISTS player CASCADE;
DROP TABLE IF EXISTS team CASCADE;
DROP TABLE IF EXISTS league CASCADE;
DROP TABLE IF EXISTS country CASCADE;

COMMENT ON DATABASE european_soccer IS 'Kaggle European Soccer Database for SQL Portfolio';
