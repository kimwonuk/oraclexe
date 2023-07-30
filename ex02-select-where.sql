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

select employee_id, last_name,job_id
from employees
where job_id like '%SA\_%' escape '\';

select last_name, manager_id
from employees
where manager_id is null;

select employee_id , last_name, job_id, salary
from employees
where salary >= 10000
and job_id like'%man%';

select employee_id , last_name, job_id, salary, 10000*12*1200 as test
from employees
where salary >= 10000
or job_id like '%man%';

select last_name, job_id
from employees
where job_id not in ('IT_PROG' , 'ST_CLERK','SA_REP');
