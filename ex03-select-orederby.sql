select last_name, job_id, department_id, hire_date
from employees
order by hire_date;

select last_name, job_id , department_id, hire_date
from employees
order by hire_date DESC;

select employee_id, last_name, salary*12 annsal
from employees
order by annsal;

select last_name, job_id, department_id, hire_date
from employees
order by 3;

select last_name, job_id, department_id, salary
from employees
order by department_id, salary desc;