select last_name, salary
from employees
where salary > (select salary from employees where last_name = 'Abel');

select last_name , job_id , salary
from employees
where salary =(select min(salary) from employees);

select employee_id , last_name, job_id, salary
from employees
where salary < any(select salary from employees where job_id = 'IT_PROG')
and job_id <> 'IT_PROG';

select * from departments
where not exists
                        (select* from employees
                        where employees.department_id = departments.department_id);
                        
select emp.last_name
from employees emp
where emp.employee_id not in
                                                    (select mgr.manager_id
                                                    from employees mgr);