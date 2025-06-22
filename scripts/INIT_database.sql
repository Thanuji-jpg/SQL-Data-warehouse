/*
================================================================================
create database and schemas 
================================================================================
script purpose:
this script was used to make a database after checking if there is any duplicate database of the same.
if the database exists already, it is dropped and recreate. additionally, the script sets up three schemas
within database: 'bronze', 'silver', 'gold'.

WARNING:
Running this script will drop the entire database named 'SalesWarehouse' if it already exists.
All data in the database will be permanently lost
*/
USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS(SELECT 1 FROm SYS.DATABASES where NAME = 'SalesWarehouse'
BEGIN
ALTER DATABASE SalesWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
END;
GO

--Create the database 'SalesWarehouse'
CREATE DATABASE SalesWarehouse;

--set master database
USE SalesWarehouse;
GO

--create schemas
CREATE SCHEMA bronze;
GO

--create schemas
CREATE SCHEMA silver;
GO

--create schemas
CREATE SCHEMA gold;
GO

	
