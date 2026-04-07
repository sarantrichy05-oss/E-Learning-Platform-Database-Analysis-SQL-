# E-Learning Platform Database Analysis (SQL)

A SQL-based project that designs and analyzes a relational database system for an E-learning platform. The project focuses on managing learner data, course details, and purchase transactions while generating insights using SQL queries.

---

## Table of Contents

* Project Overview
* Database Description
* Tables & Schema
* Features Implemented
* SQL Concepts Covered
* Analytical Queries
* Key Insights
* How to Use
* Requirements

---

## Project Overview

This project involves designing and implementing a relational database for an E-learning platform using SQL.

The main objective is to store and manage learner activities such as course purchases and to analyze business performance through SQL queries.

---

## Database Description

The database represents an online learning platform where users can:

* Browse and purchase courses
* Learn from different course categories
* Generate revenue through course enrollments
* Analyze learner behavior and sales performance

---

## Tables & Schema

### Learners

* learner_id (Primary Key)
* full_name
* country

### Courses

* course_id (Primary Key)
* course_name
* category
* unit_price

### Purchases

* purchase_id (Primary Key)
* learner_id (Foreign Key)
* course_id (Foreign Key)
* quantity
* purchase_date

---

## Features Implemented

* Database creation using DDL (CREATE DATABASE, CREATE TABLE)
* Data insertion using DML (INSERT statements)
* Relationship management using Primary and Foreign Keys
* Data analysis using SQL queries
* Multi-table analysis using JOIN operations

---

## SQL Concepts Covered

* Filtering: WHERE
* Sorting: ORDER BY, LIMIT
* Joins: INNER JOIN, LEFT JOIN, RIGHT JOIN
* Aggregation: SUM(), COUNT()
* Grouping: GROUP BY, HAVING
* Date Functions
* Subqueries (for percentage calculation)
* Derived Columns using expressions

---

## Analytical Queries

* Total spending by each learner
* Top 3 most purchased courses
* Category-wise revenue and learner count
* Learners purchasing from multiple categories
* Courses with no purchases
* Top 5 learners by spending
* Category contribution percentage
* High-demand courses
* Revenue by country
* Monthly revenue trends

---

## Key Insights

* Technical courses like SQL, Python, and Cloud have higher demand
* Some courses have no purchases, indicating low demand
* A few learners contribute significantly to total revenue
* Data and AI categories generate higher revenue
* Countries like India, USA, and UAE show strong performance
* Purchase activity is higher in certain months

---

## How to Use

1. Import the SQL file into MySQL or any SQL database system
2. Run the CREATE TABLE scripts
3. Insert the sample data
4. Execute analytical queries to generate insights

---

## Requirements

* MySQL / SQL-compatible database system
* SQL editor (MySQL Workbench, VS Code, etc.)


