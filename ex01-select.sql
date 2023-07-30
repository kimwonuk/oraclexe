SELECT
    *
FROM
    departments;

SELECT
    last_name,
    salary,
    salary + 300
FROM
    employees;

SELECT
    last_name,
    salary,
    12 * ( salary + 100 )
FROM
    employees;

SELECT
    last_name,
    12 * salary * commission_pct,
    salary,
    commission_pct
FROM
    employees;

SELECT
    last_name      AS name,
    commission_pct comm,
    salary * 10    AS ±Þ¿©10¹è
FROM
    employees;

SELECT
    last_name   "Name",
    salary * 12 " Annual Salary"
FROM
    employees;

SELECT
    last_name || job_id AS "Employees",
    last_name,
    job_id
FROM
    employees;

SELECT
    last_name
    || ' is a '
    || job_id AS "Employee Details"
FROM
    employees;

SELECT
    department_id
    || q'[ Department's Manager Id:  ]'
    || manager_id AS "Department and Manager"
FROM
    employees;

SELECT
    department_id
FROM
    employees;

SELECT DISTINCT
    department_id
FROM
    employees;

describe employees;