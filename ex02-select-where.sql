SELECT
    employee_id,
    last_name,
    job_id,
    department_id
FROM
    employees
WHERE
    department_id = 90;

SELECT
    last_name,
    job_id,
    department_id
FROM
    employees
WHERE
    last_name = 'Whalen';

SELECT
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date = '03/06/17';

SELECT
    *
FROM
    employees;

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary <= 3000;

SELECT
    last_name,
    salary
FROM
    employees
WHERE
    salary BETWEEN 2500 AND 3500;

SELECT
    last_name,
    salary
FROM
    employees
WHERE
        salary >= 2500
    AND salary <= 3500;

SELECT
    employee_id,
    last_name,
    salary,
    manager_id
FROM
    employees
WHERE
    manager_id IN ( 100, 101, 201 );

SELECT
    employee_id,
    last_name,
    salary,
    manager_id
FROM
    employees
WHERE
    manager_id = 100
    OR manager_id = 101
    OR manager_id = 201;

SELECT
    first_name
FROM
    employees
WHERE
    first_name LIKE 'A%';

SELECT
    first_name
FROM
    employees
WHERE
    first_name LIKE '%a%';

SELECT
    last_name
FROM
    employees
WHERE
    last_name LIKE '_o%';

SELECT
    employee_id,
    last_name,
    job_id
FROM
    employees
WHERE
    job_id LIKE '%SA\_%' ESCAPE '\';

SELECT
    last_name,
    manager_id
FROM
    employees
WHERE
    manager_id IS NULL;

SELECT
    employee_id,
    last_name,
    job_id,
    salary
FROM
    employees
WHERE
        salary >= 10000
    AND job_id LIKE '%man%';

SELECT
    employee_id,
    last_name,
    job_id,
    salary,
    10000 * 12 * 1200 AS test
FROM
    employees
WHERE
    salary >= 10000
    OR job_id LIKE '%man%';

SELECT
    last_name,
    job_id
FROM
    employees
WHERE
    job_id NOT IN ( 'IT_PROG', 'ST_CLERK', 'SA_REP' );