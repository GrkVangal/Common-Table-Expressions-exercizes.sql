# University database – sql exercises

## About this project

This repository contains a collection of sql exercises based on a university database.

The main purpose of this project is to practice sql fundamentals, understand how relational databases work, and develop the ability to retrieve, filter, combine, and analyze data from multiple tables.

The exercises use realistic university data, including students, instructors, courses, departments, teaching assignments, and academic advisors.

## Sql concepts and theory

### 1. Basic data retrieval
- `SELECT` – retrieve specific columns from a table.
- `FROM` – define the source table.
- column aliases using `AS` – give columns more meaningful names.
- `ORDER BY` – sort query results in ascending or descending order.

### 2. Filtering data
- `WHERE` – filter records based on specific conditions.
- comparison operators (`=`, `>`, `<`, `>=`, `<=`, `<>`).
- logical operators (`AND`, `OR`, `NOT`).
- `BETWEEN` – filter values within a specific range.
- `LIKE` – search for patterns inside text values.
- `IS NULL` and `IS NOT NULL` – check for missing values.

### 3. Aggregate functions
aggregate functions are used to calculate information from multiple records.

- `COUNT()` – count records.
- `SUM()` – calculate the total of numeric values.
- `AVG()` – calculate the average.
- `MIN()` – find the minimum value.
- `MAX()` – find the maximum value.

### 4. grouping data
- `GROUP BY` – organize records into groups based on one or more columns.
- `HAVING` – filter grouped results using aggregate conditions.

These concepts are useful for calculating:
- number of students per department.
- number of courses per department.
- total instructor salaries.
- average student credits.
- number of teaching and advising records.

### 5. Joins and relationships

Joins allow data from different tables to be combined using related columns.

- `INNER JOIN` – return records that have matching values in both tables.
- `LEFT JOIN` – return all records from the left table, including those without a match.
- `CROSS JOIN` – combine every row from one result with every row from another result.

Examples include:
- connecting students with their course enrollments.
- connecting instructors with their teaching assignments.
- retrieving department information together with student statistics.
- identifying courses without any enrollments.

### 6. Common table expressions (ctes)

a common table expression is a temporary named result set created using the `WITH` keyword.

ctes help organize complex queries into smaller and more understandable steps.

```sql
WITH department_counts AS (
    SELECT dept_name, COUNT(*) AS student_count
    FROM student
    GROUP BY dept_name
)
SELECT *
FROM department_counts;
```

In this project, ctes are used to:
- calculate statistics before joining tables.
- separate different calculations.
- compare aggregated results.
- improve query readability and structure.

### 7. Subqueries and data comparison

subqueries allow one query to use the result of another query.

they are useful when comparing values against calculated results, such as:
- departments with a budget above the university average.
- instructors earning more than their department's average salary.
- courses with enrollment numbers above the average.

### 8. Aggregate calculations and comparisons

The exercises also introduce more advanced analytical concepts, including:

- calculating averages from grouped results.
- comparing department totals against overall averages.
- comparing individual records against group averages.
- calculating separate statistics before combining them.
- using multiple ctes to organize independent calculations.

### 9. Avoiding duplicate and incorrect calculations

An important part of working with relational databases is understanding how joins affect the number of records.

When two tables contain multiple matching records, joining them directly can multiply rows and produce incorrect aggregate results.

To avoid this problem, the exercises use separate ctes to calculate totals and counts before joining the results.

This technique is particularly useful when analyzing:
- students and instructors per department.
- teaching records and student enrollments.
- instructor teaching assignments and academic advisors.

## Database tables

the exercises are based on the following university database tables:

| table | purpose |
|---|---|
| `student` | student information and total credits |
| `instructor` | instructor information and salaries |
| `course` | course details and credits |
| `department` | department information and budgets |
| `takes` | student course enrollments |
| `teaches` | instructor teaching assignments |
| `advisor` | relationships between instructors and students |

## Skills developed

Through these exercises, i practiced:

- writing sql queries from simple to more advanced levels.
- retrieving and filtering relational data.
- using aggregate functions and grouping.
- combining multiple tables with joins.
- creating and organizing queries with ctes.
- comparing aggregated values with averages.
- understanding table relationships and foreign-key-style connections.
- avoiding incorrect calculations caused by duplicate rows.
- using sql for basic data analysis and reporting.

## Tools used

- mysql
- mysql workbench
- sql

## Project goal

The goal of this repository is to build a strong foundation in sql and relational database management.

It serves as a learning project and a reference for practicing sql queries, understanding database relationships, and developing basic data analysis skills.
