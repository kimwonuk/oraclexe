--Q1.employees ���̺��� ��� �������� ��(last_name), �̸�(first_name) �� �޿�(salary)�� ��ȸ�ϼ���
select last_name,fist_name,salaty
from employees;

--Q2 jobs ���̺��� ��� �������� ���� id job_id �� �۹��� job_title�� ��ȸ�ϼ���
select job_id , job_title
from jobs;

--Q3 department ���̺��� ��� �μ����� �μ� department_id �� �μ��� department_name�� ��ȸ�ϼ���
select department_id, department_name
from departments;
--Q4 locations ���̺��� ��� �������� id location_id �� ���� city�� ��ȸ�ϼ���
select location_id , city
from locations;
--Q5 employees ���̺��� �޿�salary�� 5000�̻��� �������� �̸� first_name �� �޿� salary�� ��ȸ�ϼ���
select first_name , salary
from employees
where salary>=5000;
--Q6 employees ���̺��� �ٹ� ������ (hire_date) �� 2005�� ������ �������� �̸�(first_name)��
--�ٹ� ������ hire_date
select first_name,hire_date
from employees
where hire_date > '05/01/01' ;
--ez ��