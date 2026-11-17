WITH department_payroll AS (
    SELECT
        dept_name,
        SUM(salary) AS total_salary
    FROM instructor
    GROUP BY dept_name
),
average_payroll AS (
    SELECT
        AVG(total_salary) AS avg_salary_total
    FROM department_payroll
)
SELECT
    department_payroll.dept_name,
    department_payroll.total_salary
FROM department_payroll
CROSS JOIN average_payroll
WHERE department_payroll.total_salary > average_payroll.avg_salary_total
ORDER BY department_payroll.total_salary DESC;