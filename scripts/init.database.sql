/*
=====================================================
Create Database and Schemas
=====================================================
SCRIPT PURPOSE:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Addionally, the script sets up three schemas
	withing the database: 'bronze', 'silver' and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if ir exists.
	All data in the database will be permanently deleted. Procced with caution and
	ensure you have proper bacups before running this script
*/

USE master;

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
