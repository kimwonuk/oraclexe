create view empvu80
as select employee_id, last_name, salary
    from employees
    where department_id = 80;
    
desc empvu80;

select * from empvu80;

create view salvu50
as select employee_id as ID_NUMBER, last_name,salary*12 ANN_SALARY
    from employees
    where department_id = 50;