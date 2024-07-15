# Database_for_finance_division_using_postgreSQL

This repository contains Python scripts and SQL queries that assist the Finance department in processing and organizing financial division data. The primary objective of this project is to create a PostgreSQL server-based database, where the database contents are derived from CSV formatted data. This project converts the financial division database, previously managed using Microsoft Excel, into a more robust and efficient PostgreSQL server database.

## Project Purpose
The main purpose of this project is to streamline and enhance the management of financial data by transitioning from Excel-based management to a PostgreSQL server-based database. This transition aims to improve data integrity, accessibility, and efficiency in data processing.

## Problem Statement
Managing financial data using Microsoft Excel poses several challenges, including data redundancy, limited data handling capabilities, and difficulties in maintaining data integrity. This project addresses these issues by converting the Excel-based financial data into a PostgreSQL database, providing a more scalable and efficient solution for data management.

## Background
The Finance department needs to handle large volumes of financial data accurately and efficiently. Microsoft Excel, while versatile, is not ideal for managing extensive datasets and performing complex queries. Transitioning to a PostgreSQL database offers better data management, improved query performance, and enhanced data integrity.

## Project Output
The output of this project includes:
A PostgreSQL server-based database containing cleaned and normalized financial data.
SQL scripts for creating and querying the database.
CSV files generated from SQL queries for further analysis and reporting.

## Methods
The project utilizes the following methods:
Data Cleaning: Removing missing values, cleaning white spaces, and normalizing data to reduce redundancy.
Database Creation: Writing SQL scripts to create the database and tables.
Data Querying: Writing SQL queries to access and manipulate the data.

## Technology Stack
The project is developed using the following technologies:

Programming Language: Python

Database Management: PostgreSQL

Data Analysis and Manipulation: Pandas

Notebook Environment: Jupyter Notebook

SQL Scripting: SQL

## Files
1. Database Project.ipynb
This notebook includes:
Dataset Information: Detailed description of the dataset used.
Data Cleaning: Processes for handling missing values, cleaning white spaces, and normalizing data to reduce redundancy.

2. P0G2_kelvin_rizky.sql
This SQL script includes:
Database and Table Creation: Queries for creating the database and tables.
Data Access Queries: Queries for accessing and manipulating the data within the PostgreSQL database.

3. tabel_statistik_sales_negara.csv
This CSV file contains data from the query results in P0G2_kelvin_rizky.sql, providing statistical sales data by country.

4. tabel_total_profit_per_segment.csv
This CSV file contains data from the query results in P0G2_kelvin_rizky.sql, providing total profit data per segment.
