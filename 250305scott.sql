rem  �ǽ� ��ũ��Ʈ
rem  CONNECT hr/hr

DROP TABLE EMP;
DROP TABLE DEPT;
DROP TABLE BONUS;
DROP TABLE SALGRADE;

CREATE TABLE DEPT
        (DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
         DNAME VARCHAR2(14),
	     LOC   VARCHAR2(13) ) ;
CREATE TABLE EMP
    (EMPNO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
	 ENAME VARCHAR2(10),
 	 JOB   VARCHAR2(9),
	 MGR   NUMBER(4),
	 HIREDATE DATE,
	 SAL   NUMBER(7,2),
	 COMM  NUMBER(7,2),
	 DEPTNO NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES DEPT);
CREATE TABLE BONUS
	(ENAME VARCHAR2(10),
	 JOB   VARCHAR2(9),
	 SAL   NUMBER,
	 COMM  NUMBER) ;
CREATE TABLE SALGRADE
    (GRADE NUMBER,
	 LOSAL NUMBER,
	 HISAL NUMBER );

INSERT INTO DEPT VALUES (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES (40,'OPERATIONS','BOSTON');

INSERT INTO EMP VALUES
(7369,'SMITH','CLERK',    7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMP VALUES
(7499,'ALLEN','SALESMAN', 7698,to_date('20-02-1981', 'dd-mm-yyyy'),1600,300,30);
INSERT INTO EMP VALUES
(7521,'WARD','SALESMAN',  7698,to_date('22-02-1981', 'dd-mm-yyyy'),1250,500,30);
INSERT INTO EMP VALUES
(7566,'JONES','MANAGER',  7839,to_date('02-04-1981',  'dd-mm-yyyy'),2975,NULL,20);
INSERT INTO EMP VALUES
(7654,'MARTIN','SALESMAN',7698,to_date('28-09-1981', 'dd-mm-yyyy'),1250,1400,30);
INSERT INTO EMP VALUES
(7698,'BLAKE','MANAGER',  7839,to_date('01-05-1981',  'dd-mm-yyyy'),2850,NULL,30);
INSERT INTO EMP VALUES
(7782,'CLARK','MANAGER',  7839,to_date('09-06-1981',  'dd-mm-yyyy'),2450,NULL,10);
INSERT INTO EMP VALUES
(7788,'SCOTT','ANALYST',  7566,to_date('13-07-1987', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMP VALUES
(7839,'KING','PRESIDENT', NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO EMP VALUES
(7844,'TURNER','SALESMAN',7698,to_date('08-09-1981',  'dd-mm-yyyy'),1500,0,30);
INSERT INTO EMP VALUES
(7876,'ADAMS','CLERK',    7788,to_date('13-07-1987', 'dd-mm-yyyy'),1100,NULL,20);
INSERT INTO EMP VALUES
(7900,'JAMES','CLERK',    7698,to_date('03-12-1981', 'dd-mm-yyyy'),950,NULL,30);
INSERT INTO EMP VALUES
(7902,'FORD','ANALYST',   7566,to_date('03-12-1981', 'dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMP VALUES
(7934,'MILLER','CLERK',   7782,to_date('23-01-1982', 'dd-mm-yyyy'),1300,NULL,10);

INSERT INTO SALGRADE VALUES (1, 700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);

COMMIT;
rem EXIT






alter session set nls_language='AMERICAN'; 

/*************************************************************************
* ������ ����� �ִ� STUDENT, PROFESSOR, DEPARTMENT, SALGRADE ���̺� ����
*************************************************************************/

DROP TABLE STUDENT;
DROP TABLE PROFESSOR;
DROP TABLE DEPARTMENT;
DROP TABLE SALGRADE;


/*************************************************************************
*                         STUDNET ���̺� ����
*************************************************************************/
CREATE TABLE STUDENT
        (STUDNO NUMBER(5)  CONSTRAINT PK_STUDNO PRIMARY KEY,
         NAME VARCHAR2(20),
         USERID varchar2(10),
         GRADE VARCHAR2(1),
         IDNUM VARCHAR2(13),
         BIRTHDATE DATE,
         TEL VARCHAR2(13),
         HEIGHT NUMBER(5,2),
         WEIGHT NUMBER(5,2),
         DEPTNO NUMBER(4),
         PROFNO NUMBER(4));


/*************************************************************************
*                        STUDNET ���̺� ������ �Է�
*************************************************************************/
INSERT INTO STUDENT VALUES
        (10101, '������', 'jun123', '4', '7907021369824',
        TO_DATE('02-JUL-1979','DD-MON-YYYY'), '051)781-2158', 176, 72, '101',9903);

INSERT INTO STUDENT VALUES
        (20101, '�̵���', 'Dals', '1', '8312101128467',
         TO_DATE('10-DEC-1983','DD-MON-YYYY'), '055)426-1752', 172, 64, '201',NULL);

INSERT INTO STUDENT VALUES
        (10102, '�ڹ̰�', 'ansel414', '1', '8405162123648',
        TO_DATE('16-MAY-1984','DD-MON-YYYY'), '055)261-8947', 168, 52, '101',NULL);

INSERT INTO STUDENT VALUES
        (10103, '�迵��', 'mandu', '3', '8103211063421',
        TO_DATE('11-JAN-1981','DD-MON-YYYY'), '051)824-9637', 170, 88 ,'101',9906);

INSERT INTO STUDENT VALUES
        (20102, '�ڵ���', 'Ping2', '1', '8511241639826',
        TO_DATE('24-NOV-1985','DD-MON-YYYY'), '051)742-6384', 182, 70, '201',NULL);

INSERT INTO STUDENT VALUES
        (10201, '������', 'simply', '2', '8206062186327',
        TO_DATE('06-JUN-1982','DD-MON-YYYY'), '055)419-6328', 164, 48, '102',9905);
INSERT INTO STUDENT VALUES
        (10104, '������', 'Gomo00', '2', '8004122298371',
        TO_DATE('12-APR-1980','DD-MON-YYYY'), '055)418-9627', 161, 42, '101',9907);

INSERT INTO STUDENT VALUES
        (10202, '������', 'yousuk', '4', '7709121128379',
        TO_DATE('12-OCT-1977','DD-MON-YYYY'), '051)724-9618', 177, 92, '102',9905);

INSERT INTO STUDENT VALUES
        (10203, '�ϳ���', 'hanal', '1', '8501092378641',
        TO_DATE('18-DEC-1984','DD-MON-YYYY'), '055)296-3784', 160, 68, '102',NULL);

INSERT INTO STUDENT VALUES
        (10105, '������', 'YouJin12', '2', '8301212196482',
        TO_DATE('21-JAN-1983','DD-MON-YYYY'), '02)312-9838', 171, 54, '101',9907);

INSERT INTO STUDENT VALUES
        (10106, '������', 'seolly', '1', '8511291186273',
        TO_DATE('29-NOV-1985','DD-MON-YYYY'), '051)239-4861', 186, 72, '101',NULL);

INSERT INTO STUDENT VALUES
        (10204, '������', 'Samba7', '3', '7904021358671',
        TO_DATE('02-APR-1979','DD-MON-YYYY'), '053)487-2698', 171, 70, '102',9905);
 
INSERT INTO STUDENT VALUES
        (10107, '�̱���', 'huriky', '4', '8109131276431',
        TO_DATE('13-OCT-1981','DD-MON-YYYY'), '055)736-4981', 175, 92, '101',9903);

INSERT INTO STUDENT VALUES
        (20103, '������', 'lovely', '2', '8302282169387',
        TO_DATE('28-FEB-1983','DD-MON-YYYY'), '052)175-3941', 166, 51, '201',9902);

INSERT INTO STUDENT VALUES
        (20104, '������', 'Rader214', '1', '8412141254963',
        TO_DATE('16-SEP-1984','DD-MON-YYYY'), '02)785-6984', 184, 62, '201',NULL);

INSERT INTO STUDENT VALUES
        (10108, '������', 'cleanSky', '2', '8108192157498',
        TO_DATE('19-AUG-1981','DD-MON-YYYY'), '055)248-3679', 162, 72, '101',9907);

 

/*************************************************************************
*                         PROFESSOR ���̺� ����
*************************************************************************/
CREATE TABLE PROFESSOR
        (PROFNO NUMBER(4)  CONSTRAINT PK_PROFNO PRIMARY KEY,
         NAME VARCHAR2(10),
         USERID VARCHAR2(10),
         POSITION VARCHAR2(20),
         SAL NUMBER(10),
         HIREDATE DATE,
         COMM NUMBER(2),
         DEPTNO NUMBER(4));


/*************************************************************************
*                        ROFESSOR ���̺� ������ �Է�
*************************************************************************/
INSERT INTO PROFESSOR VALUES
        (9901, '�赵��', 'capool', '����', 500,
        TO_DATE('24-01-1982','DD-MM-YYYY'), 20, 101);

INSERT INTO PROFESSOR VALUES
        (9902, '�����', 'sweat413', '������', 320,
        TO_DATE('12-04-1995','DD-MM-YYYY'), NULL, 201);

INSERT INTO PROFESSOR VALUES
        (9903, '������', 'Pascal', '������', 360,
        TO_DATE('17-05-1993','DD-MM-YYYY'), 15, 101);

INSERT INTO PROFESSOR VALUES
        (9904, '���Ͽ�', 'Blue77', '���Ӱ���', 240,
        TO_DATE('02-12-1998','DD-MM-YYYY'), NULL, 102);

INSERT INTO PROFESSOR VALUES
        (9905, '������', 'refresh', '����', 450,
        TO_DATE('08-01-1986','DD-MM-YYYY'), 25, 102);

INSERT INTO PROFESSOR VALUES
        (9906, '�̸���', 'Pocari', '�α���', 420,
        TO_DATE('13-09-1988','DD-MM-YYYY'), NULL, 101);

INSERT INTO PROFESSOR VALUES
        (9907, '������', 'totoro', '���Ӱ���', 210,
        TO_DATE('01-01-2001','DD-MM-YYYY'), NULL, 101);

INSERT INTO PROFESSOR VALUES
        (9908, '������', 'Bird13', '�α���', 400,
        TO_DATE('18-11-1990','DD-MM-YYYY'), 17, 202);


/*************************************************************************
*                          DEPARTMENT ���̺� ����
*************************************************************************/
CREATE TABLE DEPARTMENT
        (DEPTNO NUMBER(4)  CONSTRAINT PK_DEPTNO PRIMARY KEY,
         DNAME VARCHAR2(30),
         COLLEGE NUMBER(4),
         LOC VARCHAR2(10));

/*************************************************************************
*                        DEPARTMENT ���̺� ������ �Է�
*************************************************************************/
INSERT INTO DEPARTMENT VALUES
        (101, '��ǻ�Ͱ��а�', 100, '1ȣ��');

INSERT INTO DEPARTMENT VALUES
        (102, '��Ƽ�̵���а�', 100, '2ȣ��');

INSERT INTO DEPARTMENT VALUES
        (201, '���ڰ��а�', 200, '3ȣ��');

INSERT INTO DEPARTMENT VALUES
        (202, '�����а�', 200, '4ȣ��');

INSERT INTO DEPARTMENT VALUES
        (100, '�����̵���к�', 10, NULL);

INSERT INTO DEPARTMENT VALUES
        (200, '��īƮ�δн��к�', 10, NULL);

INSERT INTO DEPARTMENT VALUES
        (10, '��������', NULL, NULL);


/*************************************************************************
*                          SALGRADE ���̺� ����
*************************************************************************/
CREATE TABLE SALGRADE
        (GRADE NUMBER(2)  CONSTRAINT PK_GRADE  PRIMARY KEY,
         LOSAL NUMBER(5),
         HISAL NUMBER(5));

/*************************************************************************
*                         SALGRADE ���̺� ������ �Է�
*************************************************************************/
INSERT INTO SALGRADE VALUES (1, 100, 300);
INSERT INTO SALGRADE VALUES (2, 301, 400);
INSERT INTO SALGRADE VALUES (3, 401, 500);


COMMIT;



-- ��� ����� �̸��� �޿� �� �μ���ȣ�� ����ϴµ�,  
-- �μ� ��ȣ�� ����� ������ ���� �޿��� ���ؼ��� ������������ ����

select ename, sal, deptno
from emp
order by deptno, sal desc;


-- �л� ���̺��� �й��� ��20101���� �л��� ����� ���̵� 
-- �ҹ��ڿ� �빮�ڷ� ��ȯ�Ͽ� ���

select userid, upper(userid), lower(userid)
from student
where studno='20101';



--- �л� ���̺��� 1�г� �л��� �ֹε�� ��ȣ���� ������ϰ� �¾ ���� �����Ͽ� 
---  �̸�, �ֹι�ȣ, �������, �¾ ���� ����Ͽ���

select name �̸�, idnum �ֹι�ȣ, substr(idnum,1,6) �������, substr(idnum,3,2) �¾��
from student
where grade=1;


---------------------------------------------------------
-------- ���� �Լ� *** ------------------------------------
---------------------------------------------------------
--1) ROUND �Լ�
--   ������ �ڸ� ���Ͽ��� �ݿø��� ��� ���� ��ȯ�ϴ� �Լ�
-- ���� ���̺��� 101�а� ������ �ϱ��� ���(�� �ٹ����� 22��)�Ͽ� �Ҽ��� ù° �ڸ��� 
-- ��° �ڸ����� �ݿø� �� ���� �Ҽ��� ���� ù° �ڸ����� �ݿø��� ���� ����Ͽ���

select name, round(sal/22), round(sal/22, 2), round(sal/22, -1)
from professor
where deptno=101;


-- 2)TRUNC �Լ�
-- ������ �Ҽ��� �ڸ��� ���ϸ� ������ ��� ���� ��ȯ�ϴ� �Լ�

-- ���� ���̺��� 101�а� ������ �ϱ��� ���(�� �ٹ����� 22��)�Ͽ�
-- �Ҽ��� ù° �ڸ��� ��° �ڸ����� ���� �� ���� 
-- �Ҽ��� ���� ù° �ڸ����� ������ ���� ���

select name, trunc(sal/22), trunc(sal/22,2), trunc (sal/22, -1)
from professor
where deptno=101;


---------------------------------------------------------
-------- ���� �Լ� *** ------------------------------------
---------------------------------------------------------
-- 1) ��¥ + ���� = ��¥ (��¥�� �ϼ��� ����)
-- ���� ��ȣ�� 9908�� ������ �Ի����� �������� �Ի� 30�� �Ŀ� 60�� ���� ��¥�� ���

select name, hiredate, hiredate+30, hiredate+60
from professor
where profno=9908;


-- 2) ��¥ - ���� = ��¥ (��¥�� �ϼ��� ����)
-- 3) ��¥ - ��¥=  �ϼ� (��¥�� ��¥�� ����)

-- 4) SYSDATE �Լ�
--     SYSDATE �Լ��� �ý��ۿ� ����� ���� ��¥�� ��ȯ�ϴ� �Լ��μ�, �� �������� ��ȯ

select sysdate
from dual;


-- 5) MONTHS_BETWEEN : date1�� date2 ������ ���� ���� ���
--     ADD_MONTHS        : date�� ���� ���� ���� ��¥ ���
--     MONTHS_BETWEEN�� ADD_MONTHS �Լ��� �� ������ ��¥ ������ �ϴ� �Լ� 
--     �Ի����� 120���� �̸��� ������ ������ȣ, �Ի���, �Ի��Ϸ� ���� �����ϱ����� ���� ��,
--     �Ի��Ͽ��� 6���� ���� ��¥�� ����Ͽ���

select profno, hiredate, months_between(sysdate, hiredate), add_months(hiredate, 6)
from professor
where months_between(sysdate, hiredate)<120;


------------------------------------------------------------------------
---    PL/SQL�� ����
---   1. Oracle���� �����ϴ� ���α׷��� ����� Ư���� ������ SQL�� Ȯ��
---   2. PL/SQL Block������ SQL�� DML(������ ���۾�)���� Query(�˻���)��, 
---      �׸��� ������ ���(IF, LOOP) ���� ����Ͽ� ���������� ���α׷����� �����ϰ� 
---      �� ������  Ʈ����� ���
---
---   1) ���� 
---      ���α׷� ������ ���ȭ : ������ ���α׷��� �ǹ��ְ� �� ���ǵ� ���� Block ����
---      ��������  : ���̺�� Į���� ������ Ÿ���� ������� �ϴ� �������� ������ ����
---      ����ó��  : Exception ó�� ��ƾ�� ����Ͽ� Oracle ���� ������ ó��
---      �̽ļ�    : Oracle�� PL/SQL�� �����ϴ¾ ȣ��Ʈ�ε� ���α׷� �̵� ����
---      ���� ��� : ���� ���α׷��� ������ ���
 
------------------------------------------------------------------------


------------------------------------------------------------------------
--  Function  :  �ϳ��� ���� ������� �Ǵ� ��쿡 Function�� ����
--  ��1) Ư���� ���� ������ 7%�� ����ϴ� Function�� �ۼ�
---   ���� 1: Function  -->   tax 
---   ���� 2: parameter   -->   p_num  (�޿�)
---   ���� 3: ����� ���� 7% ���� ������

create or replace function tax(p_num in number)
return number
is
    v_tax number;
begin
    -- 7% ���
    v_tax := p_num * 0.05;
    return(v_tax);
end;


select tax(100) from dual;
select tax(200) from dual;

select empno, ename, sal, tax(sal)
from emp;



create or replace function emp_tax3
------------------------------------------------------------
--  EMP ���̺��� ����� �Է¹޾� �ش� ����� �޿��� ���� ������ ����.
-- �޿��� 2000 �̸��̸� �޿��� 6%, 
-- �޿��� 3000 �̸��̸� 8%, 
-- 5000 �̸��̸� 10%, 
-- �� �̻��� 15%�� ����
--- FUNCTION  emp_tax3
-- 1) Parameter : ��� p_empno
--      ����     :   v_sal(�޿�)
--                     v_pct(����)
-- 2) ����� ������ �޿��� ����
-- 3) �޿��� ������ ���� ��� 
-- 4) ��� �� �� Return   number
-------------------------------------------------------------
(p_empno in emp.empno%type) --1) Parameter : ���
return number
is
    v_sal emp.sal%type;
    v_pct number(5,2);
begin
    --2) ����� ������ �޿��� ����
    select sal
    into v_sal
    from emp
    where empno=p_empno;
    --3) �޿��� ������ ���� ���
    if      v_sal < 2000 then
            v_pct := (v_sal*0.06);
    elsif   v_sal < 3000 then
            v_pct := (v_sal*0.08);
    elsif   v_sal < 5000 then
            v_pct := (v_sal*0.10);
    else
            v_pct := (v_sal*0.15);
    end if;
    return(v_pct);
end emp_tax3;


IF      THEN
ELSIF    THEN
ELSE
END IF;


select ename, sal, emp_tax3(empno)
from emp;




---------------------------------------------------------
-- �ൿ���� : �μ���ȣ �Է� �ش� emp ����  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  ��ȸȭ�� :    ���    : 5555
--              �̸�    : ȫ�浿

create or replace procedure EmpSearch1
    (p_empno in emp.empno%type)
is
    v_job   emp.job%type;
    v_ename emp.ename%type;
begin
    DBMS_OUTPUT.ENABLE;
    select job, ename
    into v_job, v_ename
    from emp
    where empno=p_empno;
    DBMS_OUTPUT.put_line('��� : ' || p_empno);
    DBMS_OUTPUT.put_line('�̸� : ' || v_ename);
    DBMS_OUTPUT.put_line('���� : ' || v_job);S
END EmpSearch1;



-----------------------------------------------------
--  Procedure up_emp ���� ���
-- SQL> EXECUTE up_emp(1200);  -- ��� 
-- ���       : �޿� �λ� ����
--               ���۹���
--   ����     :   v_job(����)
--                  v_pct(����)

-- ���� 1) job = SALE����         v_pct : 10
--           IF              v_job LIKE 'SALE%' THEN
--     2)            MAN              v_pct : 7  
--     3)                                v_pct : 5
--   job�� ���� �޿� �λ��� ����  sal = sal+sal*v_pct/100
-- Ȯ�� : DB -> TBL
-----------------------------------------------------
create or replace procedure up_emp
    (p_empno in emp.empno%type)
is
    v_job   emp.job%type
    v_pct   number
begin
    DBMS_OUTPUT.ENABLE;
    if  v_job like 'sale%' then
        v_pct := 10
    elsif   v_job like '%man%' then
            v_pct := 7
    else
            v_pct := 5
    end if;
    select empno, sal+sal*v_pct/100
    from emp
    where empno=p_empno;
end up_emp;


---------------------------------------
-- ���� --------------------------------

create or replace procedure up_emp
    (p_empno in emp.empno%type)
is
    v_job   emp.job%type
    v_pct   number(3)
begin
    select  job
    into    v_job
    from    emp
    where   empno = p_empno;
    
    if      v_job like 'SALE%' then
            v_pct := 10;
    elsif   v_job like 'MAN%' then
            v_pct := 7;
    else
            v_pct := 5;
    end if;
    
    update  emp
    set     sal = sal+(sal*v_pct/100)
    where   empno = p_empno;
end;



----------------------------------------------------------
-- PROCEDURE Delete_emp
-- SQL> EXECUTE Delete_emp(9001);
-- �����ȣ : 9001
-- ����̸� : 55
-- �� �� �� : 81/12/03
-- ������ ���� ����
--  1. Parameter : ��� �Է�
--  2. ��� �̿��� �����ȣ ,����̸� , �� �� �� ���
--  3. ��� �ش��ϴ� ������ ���� 
----------------------------------------------------------

create or replace procedure Delete_emp
    (p_empno in emp.empno%type)
is
    v_ename     emp.ename%type;
    v_hiredate  emp.hiredate%type;
begin
    dbms_output.enable;
    -- ������ ������ Ȯ�ο� ����
    select  ename, hiredate
    into    v_ename, v_hiredate
    from    emp
    where   empno = p_empno;
    
    dbms_output.put_line('�����ȣ : ' || p_empno);
    dbms_output.put_line('����̸� : ' || v_ename);
    dbms_output.put_line('�� �� �� : ' || v_hiredate);
    -- ���� ����
    delete 
    from emp
    where empno = p_empno;
    dbms_output.put_line('������ ���� ����');
end Delete_emp;


---------------------------------------------------------



create or replace procedure DeptEmpSearch1
---------------------------------------------------------
-- �ൿ���� : �μ���ȣ �Է� �ش� emp ����  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  ��ȸȭ�� :    ���    : 5555
--              �̸�    : ȫ�浿

    (p_deptno in emp.deptno%type)
is
    v_empno emp.empno%type;
    v_ename emp.ename%type;
begin
    dbms_output.enable;
    select empno, ename
    into v_empno, v_ename
    from emp
    where deptno=p_deptno;
    dbms_output.put_line('��� : ' || v_empno);
    dbms_output.put_line('�̸� : ' || v_ename);
end DeptEmpSearch1;



create or replace procedure DeptEmpSearch2
---------------------------------------------------------
-- �ൿ���� : �μ���ȣ �Է� �ش� emp ����  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  ��ȸȭ�� :    ���    : 5555
--              �̸�    : ȫ�浿
-- %ROWTYPE�� �̿��ϴ� ���

    (p_deptno in emp.deptno%type)
is
    v_emp   emp%rowtype;
    --v_empno emp.empno%type;
    --v_ename emp.ename%type;
begin
    dbms_output.enable;
    select *
    into v_emp
    from emp
    where deptno=p_deptno;
    dbms_output.put_line('��� : ' || v_emp.empno);
    dbms_output.put_line('�̸� : ' || v_emp.ename);
end DeptEmpSearch2;




create or replace procedure DeptEmpSearch3
---------------------------------------------------------
-- �ൿ���� : �μ���ȣ �Է� �ش� emp ����  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  ��ȸȭ�� :    ���    : 5555
--              �̸�    : ȫ�浿
-- %ROWTYPE�� �̿��ϴ� ���

    (p_deptno in emp.deptno%type)
is
    v_emp   emp%rowtype;
    --v_empno emp.empno%type;
    --v_ename emp.ename%type;
begin
    dbms_output.enable;
    select *
    into v_emp
    from emp
    where deptno=p_deptno;
    dbms_output.put_line('��� : ' || v_emp.empno);
    dbms_output.put_line('�̸� : ' || v_emp.ename);
    
    -- Multi Row Error --> ���� ������ �䱸�� �ͺ��� ���� ���� ���� ����
    exception
    when others then
        dbms_output.put_line('ERR CODE 1 : ' || to_char(sqlcode));
        dbms_output.put_line('ERR CODE 2 : ' || sqlcode);
        dbms_output.put_line('ERR MESSAGE : ' || sqlerrm);
end DeptEmpSearch3;





--------------------------------------------------------------------------------
----  ***    cursor    ***
--- 1.���� : Oracle Server�� SQL���� �����ϰ� ó���� ������ �����ϱ� ���� 
--        "Private SQL Area" �̶�� �ϴ� �۾������� �̿�
--       �� ������ �̸��� �ο��ϰ� ����� ������ ó���� �� �ְ� ���ִµ� �̸� CURSOR
-- 2. ����  :    Implicit(��������) CURSOR -> DML���� SELECT���� ���� ���������� ���� 
--                 Explicit(�������) CURSOR -> ����ڰ� �����ϰ� �̸��� �����ؼ� ��� 
-- 3.attribute
--   1) SQL%ROWCOUNT : ���� �ֱ��� SQL���� ���� ó���� Row ��
--   2) SQL%FOUND    : ���� �ֱ��� SQL���� ���� ó���� Row�� ������ �� ���̻��̸� True
--   3) SQL%NOTFOUND : ���� �ֱ��� SQL���� ���� ó���� Row�� ������ ������True
-- 4. 4�ܰ� ** 
--     1) DECLARE �ܰ� : Ŀ���� �̸��� �ο��ϰ� Ŀ�������� ������ SELECT���� ���������ν� CURSOR�� ����
--     2) OPEN �ܰ� : OPEN���� �����Ǵ� ������ �����ϰ�, SELECT���� ����
--     3) FETCH �ܰ� : CURSOR�κ��� Pointer�� �����ϴ� Record�� ���� ������ ����
--     4) CLOSE �ܰ� : Record�� Active Set�� �ݾ� �ְ�, �ٽ� ���ο� Active Set������� OPEN�� �� �ְ� ����
--------------------------------------------------------------------------------

create or replace procedure show_emp3
    (p_empno in emp.empno%type)
is
    --1. declare �ܰ�
    cursor  emp_cursor is
    select  ename, job, sal
    from    emp
    where   empno like p_empno || '%';
    
    v_ename emp.ename%type;
    v_sal   emp.sal%type;
    v_job   emp.job%type;
begin
    --2. open �ܰ�
    open emp_cursor;
    dbms_output.put_line('�̸�    ' || '����    ' || '�޿�');
    dbms_output.put_line('----------------------------');
    loop
        --3 fetch �ܰ� --> �ϳ��� ����
        fetch emp_cursor into v_ename, v_job, v_sal;
        exit when emp_cursor%notfound;
        dbms_output.put_line(v_ename || '    ' || v_job || '    ' || v_sal);
    end loop;
    dbms_output.put_line(emp_cursor%rowcount || '���� �� ����.');
    --4 close �ܰ�
    close emp_cursor;
end;



-----------------------------------------------------
-- Fetch ��    ***
-- SQL> EXECUTE  Cur_sal_Hap (5);
-- CURSOR �� �̿� ���� 
-- �μ���ŭ �ݺ� 
-- 	�μ��� : �λ���
-- 	�ο��� : 5
-- 	�޿��� : 5000
--  
-----------------------------------------------------
create or replace procedure cur_sal_hap
    (p_deptno in emp.deptno%type)
is
    --1 declare �ܰ�
    cursor dept_sum is
        select      dname, count(*) cnt, sum(sal) sumSal
        from        emp e, dept d
        where       e.deptno=d.deptno
        and         e.deptno like p_deptno || '%'
        group by    dname;
        
    vdname  dept.dname%type;
    vcnt    number;
    vsumSal number;
begin
    dbms_output.enable;
    --2 open�ܰ�
    open    dept_sum;
    loop
        --3 fetch �ܰ�
        fetch       dept_sum into vdname, vcnt, vsumSal;
        exit when   dept_sum%notfound;
        dbms_output.put_line('�μ��� : ' || vdname);
        dbms_output.put_line('�ο��� : ' || vcnt);
        dbms_output.put_line('�޿��� : ' || vsumSal);
    end loop;
    --4 close �ܰ�
    close   dept_sum;
end cur_sal_hap;



create or replace procedure Emp_Info3
    (p_empno in emp.empno%type, p_sal out emp.sal%type)
is
    --%type �������� ���� ����
    v_empno emp.empno%type;
    v_ename emp.ename%type;
    
begin
    dbms_output.enable;
    --%type �������� ���� ���
    select empno, ename, sal
    into v_empno, v_ename, p_sal
    from emp
    where empno = p_empno;
    -- ����� ���
    dbms_output.put_line('�����ȣ : ' || v_empno);
    dbms_output.put_line('����̸� : ' || v_ename);
    dbms_output.put_line('����޿� : ' || p_sal);
end;


