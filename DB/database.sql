-- CRUD Database
-- C - Create [ Insert ]
-- R - Read [ Show ]
-- U - Update [ Change ]
-- D - Delete [ Remove ]

-- Create database
> create database if NOT EXISTS [DATABASE-NAME];

-- Read database
> show databases;

-- Import Export database
> mysqldump -u [username] -p [old-database] > [old-database-file.sql] - Export
> mysql -u [username] -p [new-database] < [old-database-file.sql] - Import

-- Delete database 
> DROP DATABASE [DATABASE-NAME];

-- Access specific database
> use [DATABASE-NAME];

