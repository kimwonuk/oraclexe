create table copy_emp
as select * from employees where 1=2;

select * from copy_emp;

insert into copy_emp
select * from employees;

commit;

select * from copy_emp;

update copy_emp
set  department_id = 50
where employee_id = 113;

ROLLBACK;

update copy_emp
set department_id = 110;

update copy_emp
set department_id = (select department_id
                                    from employees
                                    where employee_id = 100)
where job_id = (select job_id
                            from employees
                            where employee_id = 200);
                            
select *from copy_emp where job_id = 'AD_ASST';

delete from copy_emp
where employee_id = 200;

rollback;

delete from copy_emp;

truncate table copy_emp;


create table member(
    num Number primary key,
    name varchar2 (30),
    addr varchar2(50)
    );

insert into member values(1,'피카츄','태초마을');
commit;
insert into member values(2,'라이츄','태초마을');
insert into member values(3,'파이리','태초마을');
insert into member values(4,'꼬부기','태초마을');
rollback; 
select * from member;

insert into member values(5,'버터플','태초마을');
savepoint mypoint;
insert into member values(6,'야도란','태초마을');
insert into member values(7,'피존투','태초마을');
insert into member values(8,'또가스','태초마을');
rollback to mypoint;
commit;

select employee_id, salary, job_id
from employees
where job_id = 'sa_rep'
for update;

create table dept(
    depton number(6),
    dname varchar2(200),
    loc varchar(200),
    creat_date date default sysdate
    );
    
desc dept;

insert into dept
select department_id , department_name, location_id, sysdate
from departments;

create table dept2 as select * from dept;

create table dept3 as select * from dept where 1= 2;

create table simple(num number);

select * from simple;

alter table simple add(name varchar2(3));

alter table simple modify(name Varchar2(30));

alter table simple drop column name;

alter table simple add(addr varchar(50));

alter table simple drop(addr);

drop table simple;

create table dept4(
    deptno Number(2) constraint dept4_deptno_pk primary key,
    dname varchar2(15) default '영업부',
    loc char(1) constraint dept4_loc_ck check (loc in('1','2'))
    );
    
select * from dept4;

insert into dept4 (deptno,loc)
values (3,'3');

create table dept5(
    deptno number(2) primary key,
    dname varchar2(15) not null
    );
    
drop table emp;

create table emp(
    empno number(4) primary key,
    ename VARCHAR2(15) not null,
    deptno number(2),
constraint emp_dept5_fk FOREIGN key (deptno) 
    REFERENCES dept5 (deptno)
    );
    
select * from dept5;

insert into dept5(deptno, dname) values ( 1,'개발부');
insert into dept5(deptno, dname) values ( 2,'기획부');
insert into dept5(deptno, dname) values ( 3,'디자인');

commit;

select * from emp;

insert into emp(empno,ename,deptno) values (1,'안준호', 1);
insert into emp(empno,ename,deptno) values (2,'조석봉', 3);

commit;

delete from dept5 where deptno = 1;

select * from user_constraints
where constraint_name = 'EMP_DEPT5_FK';

select * from user_constraints
where table_name = 'EMP';


alter table emp DROP CONSTRAINT EMP_DEPT5_FK;

alter table emp add(constraint emp_dept5_fk foreign key(deptno) references dept5(deptno)
);

select * from user_constraints
where constraint_name = 'SYS_C008366'
;
    
    
