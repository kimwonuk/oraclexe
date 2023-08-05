--Q1.employees 테이블에서 모든 직원들의 성(last_name), 이름(first_name) 및 급여(salary)를 조회하세요
select last_name,fist_name,salaty
from employees;

--Q2 jobs 테이블에서 모든 직무들의 직무 id job_id 와 작무명 job_title을 조회하세요
select job_id , job_title
from jobs;

--Q3 department 테이블에서 모든 부서들의 부서 department_id 와 부서명 department_name을 조회하세요
select department_id, department_name
from departments;
--Q4 locations 테이블에서 모든 지역들의 id location_id 와 도시 city를 조회하세요
select location_id , city
from locations;
--Q5 employees 테이블에서 급여salary가 5000이상인 직원들의 이름 first_name 과 급여 salary를 조회하세요
select first_name , salary
from employees
where salary>=5000;
--Q6 employees 테이블에서 근무 시작일 (hire_date) 이 2005년 이후인 직원들의 이름(first_name)과
--근무 시작일 hire_date
select first_name,hire_date
from employees
where hire_date > '05/01/01' ;
--ez ㅋ