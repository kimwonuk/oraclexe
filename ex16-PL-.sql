/*
PL/SQL (Procedual Language extension to SQL)
    SQL�� Ȯ���� ������ ��� �Դϴ�.
    ���� SQL�� �ϳ��� ���(block)���� �����Ͽ� SQL������ �� �ֽ��ϴ�.

���ν��� (Procedure)
    �����ͺ��̽����� ���డ���� �ϳ��̻��� SQL���� ��� �ϳ���
    ���� �۾������� ���� �����ͺ��̽� ��ü�Դϴ�.
*/


/*
�͸� ���ν��� -- ��ȸ�� ���ν��� DB�� ������� �ʽ��ϴ�.
[�⺻����]
    DECLARE  -- ��������
    BEGIN -- ó�� ���� ����
    EXCEPTION -- ����ó��
    END -- ó�� ���� ����

*/
-- �������� ����ϵ��� ����
SET SERVEROUTPUT ON;

-- ��ũ��Ʈ ��� �ð��� ����ϵ��� ����
SET TIMING ON;


DECLARE -- ���� ����
    V_STRD_DT       VARCHAR2(8);
    V_STRD_DEPTNO   NUMBER;
    V_DEPTNO        NUMBER;
    V_DNAME         VARCHAR2(50);
    V_LOC           VARCHAR2(50);
    V_RESULT_MSG    VARCHAR2(500) DEFAULT 'SUCCESS';
BEGIN
    V_STRD_DT := TO_CHAR(SYSDATE, 'YYYYMMDD');
    V_STRD_DEPTNO := 10;
    
    SELECT T1.department_id
         , T1.department_name
         , T1.location_id
      INTO V_DEPTNO
         , V_DNAME
         , V_LOC
      FROM departments T1
     WHERE T1.department_id = V_STRD_DEPTNO;
    
    --��ȸ ��� ���� ����
    V_RESULT_MSG := 'RESULT > DEPTNO='||V_DEPTNO||', DNAME='||V_DNAME||', LOC='||V_LOC;
    --��ȸ ��� ���
    DBMS_OUTPUT.PUT_LINE( V_RESULT_MSG );
EXCEPTION --���� ó��
    WHEN VALUE_ERROR THEN
        V_RESULT_MSG := 'SQLCODE['||SQLCODE||'], VALUE_ERROR_MESSAGE =>'||SQLERRM;
        DBMS_OUTPUT.PUT_LINE( V_RESULT_MSG );
    WHEN OTHERS THEN
        V_RESULT_MSG := 'SQLCODE['||SQLCODE||'], MESSAGE =>'||SQLERRM;
        DBMS_OUTPUT.PUT_LINE( V_RESULT_MSG );
END;
/
-- �۾�����

create or replace procedure print_hello_proc
        is
                msg varchar2(20) := 'hello world';
        begin
                DBMS_OUTPUT.INPUT_LINE(msg);
        end;

EXEC print_hello_proc;
    
create table emp2 as
select employee_id empno, last_name name , salary, department_id depno
from employees;

select * from emp2;

create or replace procedure uqdate_emp_salary_proc(eno in number)
        is
        begin
            update emp2 set
            salary = salary * 1.1
            where empno = eno;
            commit;
        end;
        
select * from emp2
where empno = 115;

exec update_emp_salary_proc(115);
