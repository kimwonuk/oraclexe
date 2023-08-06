select department_id, department_name,
    location_id, city
from departments
natural join locations;

select employee_id , last_name,
    location_id, department_id
from employees join departments
USING (department_id);

select e.employee_id, e.last_name, e.department_id,
    d.department_id, d.location_id
from employees e join departments d
on (e.department_id = d.department_id);

select e.employee_id , l.city, d.department_name
from employees e join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id;

select e.employee_id, e.last_name,
    e.department_id, d.location_id
from employees e, departments d
where e.department_id = d.department_id;

select e.employee_id, e.last_name, e.department_id,
    d.department_id , d.location_id
from employees e join departments d
on e.department_id = d.department_id
and e.manager_id = 149;

select worker.last_name emp , manager.last_name mgr
from employees worker join employees manager 
on worker.manager_id = manager.employee_id;

/*
CREATE TABLE job_grades (
    grade_level CHAR(1),
    lowest_sal  NUMBER(8, 2) NOT NULL,
    highest_sal NUMBER(8, 2) NOT NULL
);

ALTER TABLE job_grades ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY ( grade_level );

INSERT INTO job_grades VALUES (
    'A',
    1000,
    2999
);

INSERT INTO job_grades VALUES (
    'B',
    3000,
    5999
);

INSERT INTO job_grades VALUES (
    'C',
    6000,
    9999
);

INSERT INTO job_grades VALUES (
    'D',
    10000,
    14999
);

INSERT INTO job_grades VALUES (
    'E',
    15000,
    24999
);

INSERT INTO job_grades VALUES (
    'F',
    25000,
    40000
);

COMMIT;

SELECT
    *
FROM
    job_grades;
    */
    
select e.last_name , e.salary , j.grade_level
from employees e join job_grades j
on e.salary between j.lowest_sal and j.highest_sal;

select e.last_name, e.department_id, d.department_name
from employees e
left outer join departments d
on e.department_id = d.department_id;


select count(*) from employees;

select * from employees
where department_id is null;

select  e.last_name, e.department_id, d.department_name
from employees e
full outer join departments d
on e.department_id = d.department_id;

select last_name , department_name
from employees
cross join departments;