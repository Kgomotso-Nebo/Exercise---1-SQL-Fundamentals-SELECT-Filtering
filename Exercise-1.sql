-- Databricks notebook source
----------- SQL Fundamentals select & filtering ---------
----  Exercise_1 --------

-- Creating a database in databricks
CREATE CATALOG IF NOT EXISTS employees;

USE CATALOG employees;


CREATE SCHEMA IF NOT EXISTS employees_profile;


-- This code is to create a table in our database and given schema
CREATE OR REPLACE TABLE employees.employees_profile.profiles (
    employees_id INT,
    first_name STRING,
    Last_name STRING,
    department STRING,
    salary INT,
    hire_date DATE,
    city STRING
    
);

SELECT *
FROM employees.employees_profile.profiles;

-- Inserting Values into the table that we have created
INSERT INTO employees.employees_profile.profiles
 VALUES 
 
    (1,'Alice', 'Green', 'IT', 70000, '2020-01-10', 'Johannesburg'),
    (2,'Brian', 'Lee', 'HR', 45000, '2019-03-22', 'Cape Town'),
    (3,'Cathy', 'Zulu', 'Finance', 65000, '2018-07-18','Durban'),
    (4,'David', 'Mokoena', 'Marketing', 50000, '2021-11-05','Pretoria'),
    (5,'Eva', 'Naidoo', 'IT', 72000, '2017-09-30', 'Johannesburg' )  
;


SELECT *
FROM employees.employees_profile.profiles;

SELECT DISTINCT department
FROM employees.employees_profile.profiles;

SELECT first_name,
       last_name
FROM employees.employees_profile.profiles
ORDER BY salary DESC;

SELECT employees_id,
       first_name,
       last_name,
       salary
FROM employees.employees_profile.profiles
ORDER BY salary DESC
LIMIT 3;
