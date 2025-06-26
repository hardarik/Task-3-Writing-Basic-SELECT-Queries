# SQL Task: Writing Basic SELECT Queries

## Overview

This project demonstrates fundamental SQL querying skills as part of my internship task focused on extracting data from one or more tables using **SELECT** statements. The purpose of this exercise is to gain hands-on experience with core SQL concepts such as filtering, projection, sorting, and limiting results. The project uses **MySQL Workbench** as the primary tool to write, test, and run SQL queries on a sample database.

---

## Project Scope and Objectives

The key objective is to become proficient in retrieving meaningful data by crafting various SELECT queries, employing clauses and conditions including:

- Retrieving all columns or specific columns from a table.
- Filtering records based on multiple conditions using `WHERE`, `AND`, `OR`.
- Pattern matching using `LIKE`.
- Selecting ranges using `BETWEEN`.
- Sorting the result set using `ORDER BY`.
- Limiting the number of records returned with `LIMIT`.
- Performing basic JOIN operations to combine data from related tables.

These skills are foundational for any SQL developer and critical for handling real-world database queries effectively.

---

## Tools and Environment

- **Database:** MySQL 8.0 (or compatible version)
- **Query Tool:** MySQL Workbench
- **Operating System:** Windows / macOS / Linux (any platform supported by MySQL Workbench)
- **Repository Platform:** GitHub

---

## Database Schema

Two tables were created to simulate a simple employee management system:

1. **departments**
   - `dept_id` (INT): Primary key identifying the department.
   - `dept_name` (VARCHAR): Name of the department.

2. **employees**
   - `emp_id` (INT): Primary key for each employee.
   - `first_name` (VARCHAR): Employee’s first name.
   - `last_name` (VARCHAR): Employee’s last name.
   - `dept_id` (INT): Foreign key referencing the employee’s department.
   - `salary` (DECIMAL): Employee’s salary.
   - `hire_date` (DATE): Date when the employee was hired.

---

## Sample Data

Sample records were inserted to represent different departments and employees with varied attributes such as salary and hire date, enabling meaningful query examples for filtering and sorting.

---

