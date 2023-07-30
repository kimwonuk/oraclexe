SELECT
    last_name,
    job_id,
    department_id,
    hire_date
FROM
    employees
ORDER BY
    hire_date;

SELECT
    last_name,
    job_id,
    department_id,
    hire_date
FROM
    employees
ORDER BY
    hire_date DESC;

SELECT
    employee_id,
    last_name,
    salary * 12 annsal
FROM
    employees
ORDER BY
    annsal;

SELECT
    last_name,
    job_id,
    department_id,
    hire_date
FROM
    employees
ORDER BY
    3;

SELECT
    last_name,
    job_id,
    department_id,
    salary
FROM
    employees
ORDER BY
    department_id,
    salary DESC;