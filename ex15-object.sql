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
    
select *from salvu50
where ANN_SALARY >= 50000;

create or replace view empvu80
    (id_number, name , sal , department_id)
as select employee_id , first_name || ' ' || last_name,
                    salary,department_id
                from employees
                where department_id = 80;
                
select * from empvu80;
                
update empvu80 set
department_id = 90
where id_number=145;

rollback;

select *from employees
where employee_id = 50;


create or replace view dept_sum_vu
    (name, minsal , maxsal, avgsal)
as select d.department_name, Min(e.salary),
           max(e.salary), avg(e.salary)
        from employees e join departments d
        on e.department_id = d.department_id
        group by d.department_name;

select *from dept_sum_vu;

select rownum, employee_id, last_name
from employees
where department_id = 80;

create or replace view high_salary_employee_vu
as select * from employees where salary > 10000
with check option constraint high_salary_employee_ck;

select * from high_salary_employee_vu;

update high_salary_employee_vu set
salary = 2400
where employee_id = 100;

update high_salary_employee_vu set
salary = 26000
where employee_id = 100;

drop view high_salary_employee_vu;

create sequence my_seq
                        increment by 1
                        start with 1
                        minvalue 1
                        maxvalue 9999999999
                        nocycle
                        cache 20
                        order;

select my_seq.currval from dual;
                        
select my_seq.nextval from dual;
drop table dept3;

create table dept3 as
select *from dept where 1= 2;

drop sequence my_seq;

select * from dept3;

insert into dept3 values(my_seq.nextval, 'A', 1, sysdate);
insert into dept3 values(my_seq.nextval, 'B', 2,sysdate);
insert into dept3 values(my_seq.nextval, 'C', 3,sysdate);

select * from employees
where last_name = 'King';

select last_name, rowid from employees
order by last_name;

create index emp_last_name_idx
    on employees(last_name);
    
drop index emp_last_name_idx;

create synonym d_sum
for dept_sum_vu;

select * from dept_sum_vu;

select *from d_sum;

drop synonym d_sum;

select rownum , rowid , employee_id, last_name, salary
from employees;
