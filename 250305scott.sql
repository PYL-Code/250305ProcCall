rem  실습 스크립트
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
* 기존에 저장되 있는 STUDENT, PROFESSOR, DEPARTMENT, SALGRADE 테이블 삭제
*************************************************************************/

DROP TABLE STUDENT;
DROP TABLE PROFESSOR;
DROP TABLE DEPARTMENT;
DROP TABLE SALGRADE;


/*************************************************************************
*                         STUDNET 테이블 생성
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
*                        STUDNET 테이블 데이터 입력
*************************************************************************/
INSERT INTO STUDENT VALUES
        (10101, '전인하', 'jun123', '4', '7907021369824',
        TO_DATE('02-JUL-1979','DD-MON-YYYY'), '051)781-2158', 176, 72, '101',9903);

INSERT INTO STUDENT VALUES
        (20101, '이동훈', 'Dals', '1', '8312101128467',
         TO_DATE('10-DEC-1983','DD-MON-YYYY'), '055)426-1752', 172, 64, '201',NULL);

INSERT INTO STUDENT VALUES
        (10102, '박미경', 'ansel414', '1', '8405162123648',
        TO_DATE('16-MAY-1984','DD-MON-YYYY'), '055)261-8947', 168, 52, '101',NULL);

INSERT INTO STUDENT VALUES
        (10103, '김영균', 'mandu', '3', '8103211063421',
        TO_DATE('11-JAN-1981','DD-MON-YYYY'), '051)824-9637', 170, 88 ,'101',9906);

INSERT INTO STUDENT VALUES
        (20102, '박동진', 'Ping2', '1', '8511241639826',
        TO_DATE('24-NOV-1985','DD-MON-YYYY'), '051)742-6384', 182, 70, '201',NULL);

INSERT INTO STUDENT VALUES
        (10201, '김진영', 'simply', '2', '8206062186327',
        TO_DATE('06-JUN-1982','DD-MON-YYYY'), '055)419-6328', 164, 48, '102',9905);
INSERT INTO STUDENT VALUES
        (10104, '지은경', 'Gomo00', '2', '8004122298371',
        TO_DATE('12-APR-1980','DD-MON-YYYY'), '055)418-9627', 161, 42, '101',9907);

INSERT INTO STUDENT VALUES
        (10202, '오유석', 'yousuk', '4', '7709121128379',
        TO_DATE('12-OCT-1977','DD-MON-YYYY'), '051)724-9618', 177, 92, '102',9905);

INSERT INTO STUDENT VALUES
        (10203, '하나리', 'hanal', '1', '8501092378641',
        TO_DATE('18-DEC-1984','DD-MON-YYYY'), '055)296-3784', 160, 68, '102',NULL);

INSERT INTO STUDENT VALUES
        (10105, '임유진', 'YouJin12', '2', '8301212196482',
        TO_DATE('21-JAN-1983','DD-MON-YYYY'), '02)312-9838', 171, 54, '101',9907);

INSERT INTO STUDENT VALUES
        (10106, '서재진', 'seolly', '1', '8511291186273',
        TO_DATE('29-NOV-1985','DD-MON-YYYY'), '051)239-4861', 186, 72, '101',NULL);

INSERT INTO STUDENT VALUES
        (10204, '윤진욱', 'Samba7', '3', '7904021358671',
        TO_DATE('02-APR-1979','DD-MON-YYYY'), '053)487-2698', 171, 70, '102',9905);
 
INSERT INTO STUDENT VALUES
        (10107, '이광훈', 'huriky', '4', '8109131276431',
        TO_DATE('13-OCT-1981','DD-MON-YYYY'), '055)736-4981', 175, 92, '101',9903);

INSERT INTO STUDENT VALUES
        (20103, '김진경', 'lovely', '2', '8302282169387',
        TO_DATE('28-FEB-1983','DD-MON-YYYY'), '052)175-3941', 166, 51, '201',9902);

INSERT INTO STUDENT VALUES
        (20104, '조명훈', 'Rader214', '1', '8412141254963',
        TO_DATE('16-SEP-1984','DD-MON-YYYY'), '02)785-6984', 184, 62, '201',NULL);

INSERT INTO STUDENT VALUES
        (10108, '류민정', 'cleanSky', '2', '8108192157498',
        TO_DATE('19-AUG-1981','DD-MON-YYYY'), '055)248-3679', 162, 72, '101',9907);

 

/*************************************************************************
*                         PROFESSOR 테이블 생성
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
*                        ROFESSOR 테이블 데이터 입력
*************************************************************************/
INSERT INTO PROFESSOR VALUES
        (9901, '김도훈', 'capool', '교수', 500,
        TO_DATE('24-01-1982','DD-MM-YYYY'), 20, 101);

INSERT INTO PROFESSOR VALUES
        (9902, '이재우', 'sweat413', '조교수', 320,
        TO_DATE('12-04-1995','DD-MM-YYYY'), NULL, 201);

INSERT INTO PROFESSOR VALUES
        (9903, '성연희', 'Pascal', '조교수', 360,
        TO_DATE('17-05-1993','DD-MM-YYYY'), 15, 101);

INSERT INTO PROFESSOR VALUES
        (9904, '염일웅', 'Blue77', '전임강사', 240,
        TO_DATE('02-12-1998','DD-MM-YYYY'), NULL, 102);

INSERT INTO PROFESSOR VALUES
        (9905, '권혁일', 'refresh', '교수', 450,
        TO_DATE('08-01-1986','DD-MM-YYYY'), 25, 102);

INSERT INTO PROFESSOR VALUES
        (9906, '이만식', 'Pocari', '부교수', 420,
        TO_DATE('13-09-1988','DD-MM-YYYY'), NULL, 101);

INSERT INTO PROFESSOR VALUES
        (9907, '전은지', 'totoro', '전임강사', 210,
        TO_DATE('01-01-2001','DD-MM-YYYY'), NULL, 101);

INSERT INTO PROFESSOR VALUES
        (9908, '남은혁', 'Bird13', '부교수', 400,
        TO_DATE('18-11-1990','DD-MM-YYYY'), 17, 202);


/*************************************************************************
*                          DEPARTMENT 테이블 생성
*************************************************************************/
CREATE TABLE DEPARTMENT
        (DEPTNO NUMBER(4)  CONSTRAINT PK_DEPTNO PRIMARY KEY,
         DNAME VARCHAR2(30),
         COLLEGE NUMBER(4),
         LOC VARCHAR2(10));

/*************************************************************************
*                        DEPARTMENT 테이블 데이터 입력
*************************************************************************/
INSERT INTO DEPARTMENT VALUES
        (101, '컴퓨터공학과', 100, '1호관');

INSERT INTO DEPARTMENT VALUES
        (102, '멀티미디어학과', 100, '2호관');

INSERT INTO DEPARTMENT VALUES
        (201, '전자공학과', 200, '3호관');

INSERT INTO DEPARTMENT VALUES
        (202, '기계공학과', 200, '4호관');

INSERT INTO DEPARTMENT VALUES
        (100, '정보미디어학부', 10, NULL);

INSERT INTO DEPARTMENT VALUES
        (200, '메카트로닉스학부', 10, NULL);

INSERT INTO DEPARTMENT VALUES
        (10, '공과대학', NULL, NULL);


/*************************************************************************
*                          SALGRADE 테이블 생성
*************************************************************************/
CREATE TABLE SALGRADE
        (GRADE NUMBER(2)  CONSTRAINT PK_GRADE  PRIMARY KEY,
         LOSAL NUMBER(5),
         HISAL NUMBER(5));

/*************************************************************************
*                         SALGRADE 테이블 데이터 입력
*************************************************************************/
INSERT INTO SALGRADE VALUES (1, 100, 300);
INSERT INTO SALGRADE VALUES (2, 301, 400);
INSERT INTO SALGRADE VALUES (3, 401, 500);


COMMIT;



-- 모든 사원의 이름과 급여 및 부서번호를 출력하는데,  
-- 부서 번호로 결과를 정렬한 다음 급여에 대해서는 내림차순으로 정렬

select ename, sal, deptno
from emp
order by deptno, sal desc;


-- 학생 테이블에서 학번이 ‘20101’인 학생의 사용자 아이디를 
-- 소문자와 대문자로 변환하여 출력

select userid, upper(userid), lower(userid)
from student
where studno='20101';



--- 학생 테이블에서 1학년 학생의 주민등록 번호에서 생년월일과 태어난 달을 추출하여 
---  이름, 주민번호, 생년월일, 태어난 달을 출력하여라

select name 이름, idnum 주민번호, substr(idnum,1,6) 생년월일, substr(idnum,3,2) 태어난달
from student
where grade=1;


---------------------------------------------------------
-------- 숫자 함수 *** ------------------------------------
---------------------------------------------------------
--1) ROUND 함수
--   지정한 자리 이하에서 반올림한 결과 값을 반환하는 함수
-- 교수 테이블에서 101학과 교수의 일급을 계산(월 근무일은 22일)하여 소수점 첫째 자리와 
-- 셋째 자리에서 반올림 한 값과 소숫점 왼쪽 첫째 자리에서 반올림한 값을 출력하여라

select name, round(sal/22), round(sal/22, 2), round(sal/22, -1)
from professor
where deptno=101;


-- 2)TRUNC 함수
-- 지정한 소수점 자리수 이하를 절삭한 결과 값을 반환하는 함수

-- 교수 테이블에서 101학과 교수의 일급을 계산(월 근무일은 22일)하여
-- 소수점 첫째 자리와 셋째 자리에서 절삭 한 값과 
-- 소숫점 왼쪽 첫째 자리에서 절삭한 값을 출력

select name, trunc(sal/22), trunc(sal/22,2), trunc (sal/22, -1)
from professor
where deptno=101;


---------------------------------------------------------
-------- 날자 함수 *** ------------------------------------
---------------------------------------------------------
-- 1) 날짜 + 숫자 = 날짜 (날짜에 일수를 가산)
-- 교수 번호가 9908인 교수의 입사일을 기준으로 입사 30일 후와 60일 후의 날짜를 출력

select name, hiredate, hiredate+30, hiredate+60
from professor
where profno=9908;


-- 2) 날짜 - 숫자 = 날짜 (날짜에 일수를 감산)
-- 3) 날짜 - 날짜=  일수 (날짜에 날짜를 감산)

-- 4) SYSDATE 함수
--     SYSDATE 함수는 시스템에 저장된 현재 날짜를 반환하는 함수로서, 초 단위까지 반환

select sysdate
from dual;


-- 5) MONTHS_BETWEEN : date1과 date2 사이의 개월 수를 계산
--     ADD_MONTHS        : date에 개월 수를 더한 날짜 계산
--     MONTHS_BETWEEN과 ADD_MONTHS 함수는 월 단위로 날짜 연산을 하는 함수 
--     입사한지 120개월 미만인 교수의 교수번호, 입사일, 입사일로 부터 현재일까지의 개월 수,
--     입사일에서 6개월 후의 날짜를 출력하여라

select profno, hiredate, months_between(sysdate, hiredate), add_months(hiredate, 6)
from professor
where months_between(sysdate, hiredate)<120;


------------------------------------------------------------------------
---    PL/SQL의 개념
---   1. Oracle에서 지원하는 프로그래밍 언어의 특성을 수용한 SQL의 확장
---   2. PL/SQL Block내에서 SQL의 DML(데이터 조작어)문과 Query(검색어)문, 
---      그리고 절차형 언어(IF, LOOP) 등을 사용하여 절차적으로 프로그래밍을 가능하게 
---      한 강력한  트랜잭션 언어
---
---   1) 장점 
---      프로그램 개발의 모듈화 : 복잡한 프로그램을 의미있고 잘 정의된 작은 Block 분해
---      변수선언  : 테이블과 칼럼의 데이터 타입을 기반으로 하는 유동적인 변수를 선언
---      에러처리  : Exception 처리 루틴을 사용하여 Oracle 서버 에러를 처리
---      이식성    : Oracle과 PL/SQL을 지원하는어떤 호스트로도 프로그램 이동 가능
---      성능 향상 : 응용 프로그램의 성능을 향상
 
------------------------------------------------------------------------


------------------------------------------------------------------------
--  Function  :  하나의 값을 돌려줘야 되는 경우에 Function을 생성
--  문1) 특정한 수에 세금을 7%로 계산하는 Function을 작성
---   조건 1: Function  -->   tax 
---   조건 2: parameter   -->   p_num  (급여)
---   조건 3: 계산을 통해 7% 값을 돌려줌

create or replace function tax(p_num in number)
return number
is
    v_tax number;
begin
    -- 7% 계산
    v_tax := p_num * 0.05;
    return(v_tax);
end;


select tax(100) from dual;
select tax(200) from dual;

select empno, ename, sal, tax(sal)
from emp;



create or replace function emp_tax3
------------------------------------------------------------
--  EMP 테이블에서 사번을 입력받아 해당 사원의 급여에 따른 세금을 구함.
-- 급여가 2000 미만이면 급여의 6%, 
-- 급여가 3000 미만이면 8%, 
-- 5000 미만이면 10%, 
-- 그 이상은 15%로 세금
--- FUNCTION  emp_tax3
-- 1) Parameter : 사번 p_empno
--      변수     :   v_sal(급여)
--                     v_pct(세율)
-- 2) 사번을 가지고 급여를 구함
-- 3) 급여를 가지고 세율 계산 
-- 4) 계산 된 값 Return   number
-------------------------------------------------------------
(p_empno in emp.empno%type) --1) Parameter : 사번
return number
is
    v_sal emp.sal%type;
    v_pct number(5,2);
begin
    --2) 사번을 가지고 급여를 구함
    select sal
    into v_sal
    from emp
    where empno=p_empno;
    --3) 급여를 가지고 세율 계산
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
-- 행동강령 : 부서번호 입력 해당 emp 정보  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  조회화면 :    사번    : 5555
--              이름    : 홍길동

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
    DBMS_OUTPUT.put_line('사번 : ' || p_empno);
    DBMS_OUTPUT.put_line('이름 : ' || v_ename);
    DBMS_OUTPUT.put_line('업무 : ' || v_job);S
END EmpSearch1;



-----------------------------------------------------
--  Procedure up_emp 실행 결과
-- SQL> EXECUTE up_emp(1200);  -- 사번 
-- 결과       : 급여 인상 저장
--               시작문자
--   변수     :   v_job(업무)
--                  v_pct(세율)

-- 조건 1) job = SALE포함         v_pct : 10
--           IF              v_job LIKE 'SALE%' THEN
--     2)            MAN              v_pct : 7  
--     3)                                v_pct : 5
--   job에 따른 급여 인상을 수행  sal = sal+sal*v_pct/100
-- 확인 : DB -> TBL
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
-- 정답 --------------------------------

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
-- 사원번호 : 9001
-- 사원이름 : 55
-- 입 사 일 : 81/12/03
-- 데이터 삭제 성공
--  1. Parameter : 사번 입력
--  2. 사번 이용해 사원번호 ,사원이름 , 입 사 일 출력
--  3. 사번 해당하는 데이터 삭제 
----------------------------------------------------------

create or replace procedure Delete_emp
    (p_empno in emp.empno%type)
is
    v_ename     emp.ename%type;
    v_hiredate  emp.hiredate%type;
begin
    dbms_output.enable;
    -- 삭제할 데이터 확인용 쿼리
    select  ename, hiredate
    into    v_ename, v_hiredate
    from    emp
    where   empno = p_empno;
    
    dbms_output.put_line('사원번호 : ' || p_empno);
    dbms_output.put_line('사원이름 : ' || v_ename);
    dbms_output.put_line('입 사 일 : ' || v_hiredate);
    -- 삭제 쿼리
    delete 
    from emp
    where empno = p_empno;
    dbms_output.put_line('데이터 삭제 성공');
end Delete_emp;


---------------------------------------------------------



create or replace procedure DeptEmpSearch1
---------------------------------------------------------
-- 행동강령 : 부서번호 입력 해당 emp 정보  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  조회화면 :    사번    : 5555
--              이름    : 홍길동

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
    dbms_output.put_line('사번 : ' || v_empno);
    dbms_output.put_line('이름 : ' || v_ename);
end DeptEmpSearch1;



create or replace procedure DeptEmpSearch2
---------------------------------------------------------
-- 행동강령 : 부서번호 입력 해당 emp 정보  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  조회화면 :    사번    : 5555
--              이름    : 홍길동
-- %ROWTYPE를 이용하는 방법

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
    dbms_output.put_line('사번 : ' || v_emp.empno);
    dbms_output.put_line('이름 : ' || v_emp.ename);
end DeptEmpSearch2;




create or replace procedure DeptEmpSearch3
---------------------------------------------------------
-- 행동강령 : 부서번호 입력 해당 emp 정보  PROCEDURE 
-- SQL> EXECUTE DeptEmpSearch1(empno);
--  조회화면 :    사번    : 5555
--              이름    : 홍길동
-- %ROWTYPE를 이용하는 방법

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
    dbms_output.put_line('사번 : ' || v_emp.empno);
    dbms_output.put_line('이름 : ' || v_emp.ename);
    
    -- Multi Row Error --> 실제 인출은 요구된 것보다 많은 수의 행을 추출
    exception
    when others then
        dbms_output.put_line('ERR CODE 1 : ' || to_char(sqlcode));
        dbms_output.put_line('ERR CODE 2 : ' || sqlcode);
        dbms_output.put_line('ERR MESSAGE : ' || sqlerrm);
end DeptEmpSearch3;





--------------------------------------------------------------------------------
----  ***    cursor    ***
--- 1.정의 : Oracle Server는 SQL문을 실행하고 처리한 정보를 저장하기 위해 
--        "Private SQL Area" 이라고 하는 작업영역을 이용
--       이 영역에 이름을 부여하고 저장된 정보를 처리할 수 있게 해주는데 이를 CURSOR
-- 2. 종류  :    Implicit(묵시적인) CURSOR -> DML문과 SELECT문에 의해 내부적으로 선언 
--                 Explicit(명시적인) CURSOR -> 사용자가 선언하고 이름을 정의해서 사용 
-- 3.attribute
--   1) SQL%ROWCOUNT : 가장 최근의 SQL문에 의해 처리된 Row 수
--   2) SQL%FOUND    : 가장 최근의 SQL문에 의해 처리된 Row의 개수가 한 개이상이면 True
--   3) SQL%NOTFOUND : 가장 최근의 SQL문에 의해 처리된 Row의 개수가 없으면True
-- 4. 4단계 ** 
--     1) DECLARE 단계 : 커서에 이름을 부여하고 커서내에서 수행할 SELECT문을 정의함으로써 CURSOR를 선언
--     2) OPEN 단계 : OPEN문은 참조되는 변수를 연결하고, SELECT문을 실행
--     3) FETCH 단계 : CURSOR로부터 Pointer가 존재하는 Record의 값을 변수에 전달
--     4) CLOSE 단계 : Record의 Active Set을 닫아 주고, 다시 새로운 Active Set을만들어 OPEN할 수 있게 해줌
--------------------------------------------------------------------------------

create or replace procedure show_emp3
    (p_empno in emp.empno%type)
is
    --1. declare 단계
    cursor  emp_cursor is
    select  ename, job, sal
    from    emp
    where   empno like p_empno || '%';
    
    v_ename emp.ename%type;
    v_sal   emp.sal%type;
    v_job   emp.job%type;
begin
    --2. open 단계
    open emp_cursor;
    dbms_output.put_line('이름    ' || '업무    ' || '급여');
    dbms_output.put_line('----------------------------');
    loop
        --3 fetch 단계 --> 하나씩 꺼냄
        fetch emp_cursor into v_ename, v_job, v_sal;
        exit when emp_cursor%notfound;
        dbms_output.put_line(v_ename || '    ' || v_job || '    ' || v_sal);
    end loop;
    dbms_output.put_line(emp_cursor%rowcount || '개의 행 선택.');
    --4 close 단계
    close emp_cursor;
end;



-----------------------------------------------------
-- Fetch 문    ***
-- SQL> EXECUTE  Cur_sal_Hap (5);
-- CURSOR 문 이용 구현 
-- 부서만큼 반복 
-- 	부서명 : 인사팀
-- 	인원수 : 5
-- 	급여합 : 5000
--  
-----------------------------------------------------
create or replace procedure cur_sal_hap
    (p_deptno in emp.deptno%type)
is
    --1 declare 단계
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
    --2 open단계
    open    dept_sum;
    loop
        --3 fetch 단계
        fetch       dept_sum into vdname, vcnt, vsumSal;
        exit when   dept_sum%notfound;
        dbms_output.put_line('부서명 : ' || vdname);
        dbms_output.put_line('인원수 : ' || vcnt);
        dbms_output.put_line('급여합 : ' || vsumSal);
    end loop;
    --4 close 단계
    close   dept_sum;
end cur_sal_hap;



create or replace procedure Emp_Info3
    (p_empno in emp.empno%type, p_sal out emp.sal%type)
is
    --%type 데이터형 변수 선언
    v_empno emp.empno%type;
    v_ename emp.ename%type;
    
begin
    dbms_output.enable;
    --%type 데이터형 변수 사용
    select empno, ename, sal
    into v_empno, v_ename, p_sal
    from emp
    where empno = p_empno;
    -- 결과값 출력
    dbms_output.put_line('사원번호 : ' || v_empno);
    dbms_output.put_line('사원이름 : ' || v_ename);
    dbms_output.put_line('사원급여 : ' || p_sal);
end;


