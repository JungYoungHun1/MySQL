select * from emp;
select ename, sal from emp where sal < 900;
select ename from emp where deptno =10 and job = 'manager';
select ename from emp where deptno =10 or job = 'manager';

select empno, ename, deptno from emp where deptno != 10;
select empno, ename, deptno from emp where deptno <> 10;

select ename, comm from emp where comm in (300, 500, 1400);
select ename, comm from emp where ifnull(comm, 0) not in (300, 500, 1400);

select empno, ename, hiredate from emp where hiredate between '1981-01-01' and '1981-12-31';

 select empno, ename from emp where ename like 'm_____';
 select empno, ename from emp where ename like 'm%';
 
 select empno, ename from emp where ename like '_m%';
 select empno, ename from emp where ename like '%m%';

select 1 + 1 from dual;
select 1 + 1;

select sysdate();

select abs(-1);
select round(abs(deptno - 100)*3.14) from emp;
select round(12.3213214);
select truncate(12312312.713124342, -1);
select mod(5, 2);
select 5%2;
select power(2,3);

select ename, empno from emp where mod(empno,2) = 1;

select upper('asdf');
select lower('ASDF');

select ename, job from emp where job = upper('manager');

select char_length(trim(' AAAAA '));
select 'abc', length('a');
select length('가');
 
 SELECT substring('안녕하세요', 2,2);

select replace(' ab c ', ' ','');
# 2월 입사 조회
select ename, hiredate from emp where substring(HIREDATE, 6,2) = 02;
select * from emp;

select empno, ename, sal from emp where deptno = 10;
select ename, hiredate, deptno from emp where empno = 7369;
select * from emp where ename = 'ALLEN';
select ename, deptno, sal from emp where HIREDATE = '1983-01-12';
select * from emp where job != 'manager';
select * from emp where HIREDATE > '1981/04/02';
select ename, sal, deptno from emp where sal >= 800;
select * from emp where deptno >= 20;

select * from emp where ename like('k%');
select * from emp where HIREDATE < '1981/12/09';
select * from emp where empno <= 7698;
select ename, sal, deptno from emp where HIREDATE > '1981/04/02' and HIREDATE < '1982/12/09';
SELECT ename, job, sal from emp where sal >1600 and sal<3000;
select * from emp;
select * from emp where empno not between 7654 and 7782;

select * from emp where job in ('manager', 'salesman');

select ename, empno, deptno from emp where deptno not in (20, 30);

select empno, ename, hiredate, deptno from emp where ename like ('S%');
select * from emp where ename like ('%S%');
select * from emp where ename like ('S___T');
SELECT * FROM EMP WHERE COMM IS NOT NULL;
SELECT ENAME, DEPTNO, SAL FROM EMP WHERE DEPTNO = 30 AND SAL >= 1500;
SELECT ENAME, DEPTNO FROM EMP WHERE ENAME LIKE ('K%') OR DEPTNO = 30;
SELECT * FROM EMP WHERE SAL >=1500 AND DEPTNO =30 AND JOB = 'MANAGER';
SELECT * FROM EMP ORDER BY SAL DESC;  
SELECT * FROM EMP ORDER BY DEPTNO ASC, SAL DESC;  
SELECT * FROM EMP ORDER BY DEPTNO DESC, SAL DESC;  

SELECT ename, job, substring(hiredate, 6, 5) FROM EMP where job like ('%E%'); 
SELECT lower(ename), power(deptno, 2) FROM EMP; 


select empno, job, deptno from emp where sal between 1500 and 3000 order by empno desc;

select * from emp WHERE (empno >= 7654) and (empno <= 7782);
select * from emp where empno not between 7654 and 7782;

select * from emp where binary(ename) = 'SCOTT';


-- 이것도 되네 ㅋㅋ
# 이것도 되고 ㅋㅋ


SELECT ASCII('A'), CHAR(65);
SELECT CONCAT('ABC', '가나다');
SELECT concat_ws('/', '2022', '04', '26');

SELECT LPAD('김민규', 5, '*');
SELECT RPAD('김민규', 5, '*');

SELECT replace('I LIKE BREAK', 'BREAK', 'drinking');

-- 날짜 함수
select sysdate();
SELECT NOW();

SELECT SYSDATE(), sleep(5), SYSDATE();
SELECT NOW(), sleep(5), NOW();

SELECT HIREDATE FROM EMP;

SELECT HIREDATE, adddate(HIREDATE, interval 3 month) FROM EMP;
SELECT HIREDATE, DATE_ADD(HIREDATE, interval 3 month) FROM EMP;

-- TIMESTAMPDIFF, DATEDIFF(DAY1, DAY2)
SELECT datediff(SYSDATE(), '2022-04-25');
SELECT timestampdiff(DAY ,SYSDATE(), '2022-04-25');
SELECT timestampdiff(QUARTER ,SYSDATE(), '2020-03-25');

-- DAYOFWEEK() 일주일 중 몇번째 날인지(일요일이 1)
SELECT dayofweek(SYSDATE());
SELECT dayofweek('2022-04-26');

SELECT date_format(SYSDATE(), '%y-%M-%D %l-%i-%s');
-- 날짜 형태 변경
SELECT DATE_FORMAT(SYSDATE(), '%Y-%m-%d');
-- 숫자를 날짜로
SELECT DATE_FORMAT(20220426, '%Y-%m-%d');
-- 문자열을 날짜로
SELECT STR_TO_DATE('20220426', '%Y%m%d');

-- 숫자를 문자로, 문자를 숫자로 : CAST, CONVERT
-- CAST(값 AS 데이터형식(길이));
-- CONVERT(변환하고 싶은 데이터, 데이터형식(길이));
SELECT 1 + 1 AS 덧셈결과;
SELECT CAST(1 AS CHAR), CAST('1' AS unsigned);
SELECT CONVERT ('1', unsigned);
-- BINARY : 이진데이터
-- DATE : 날짜
-- DATETIME : 날짜
-- CHAR : 문자열
-- UNSIGNED : 부호가 없는 정수
-- SIGNED : 부호가 있는 정수


-- select groupFunction
-- 그룹 함수란 : 다수의 행 데이터를 함수 내부적으로 연산 하여
-- 하나의 데이터로 처리하는 함수

-- count() : 숫자를 세어주는 함수
-- sum() : 지정된 열의 합을 구해주는 함수
-- avg() : 평균을 구해주는 함수
-- max(), min() : 최대, 최소 구해주는 함수

-- group by절 - 특정 조건 으로 그룹화
-- having 절 - 검색된 그룹에서 조건

-- 실행순서

-- emp 테이블의 데이터 개수

select * from emp;
select count(*) from emp;

select count(comm) from emp;
-- null 을 제외 함

select sum(sal) from emp;
select sum(comm) from emp;
select sum(sal), job from emp where job = 'manager';
select count(distinct(job)) from emp;

-- 모든 사원의 급여 평균은?
select round(avg(sal)) from emp;

-- 커미션을 받는 사원수, 총 커미션의 합, 평균?
select count(comm), sum(comm), avg(comm) from emp;

select * from emp;

select max(sal) from emp;
select min(sal) from emp;

select min(hiredate), max(hiredate) from emp; 
select datediff(sysdate(), min(hiredate)), datediff(sysdate(), max(hiredate)) from emp;
SELECT TIMESTAMPDIFF(DAY, MIN(HIREDATE), SYSDATE()) FROM EMP;

-- 부서별 커미션 받는 사원수
select count(comm) from emp where deptno = 30;

-- step 01
select count(comm), deptno from emp group by deptno;
select empno, deptno, count(comm) from emp group by deptno;

-- step 02 - deptno를 그룹화 하여 부서번호를 오름차순으로 정렬된 결과 출력
select deptno, count(comm) as 'ㅎㅎ' from emp group by deptno order by 'ㅎㅎ' asc;
-- from group sel order
select ename ,deptno, count(comm) as '인원' from emp group by deptno;

-- 부서별 월급여 평균?
select  deptno, avg(sal) from emp group by deptno;
-- 소속 부서별 급여 총애과 평균?(단 deptno로 오름차순 정렬)
select deptno, sum(sal), avg(sal) from emp group by deptno order by deptno asc;
-- 소속 부서별 최대 급여, 최소 급여
select deptno, max(sal), min(sal) from emp group by deptno;
-- having 절 (그룹함수 조건절)
-- 부서별 사원수, 커미션 받는 사원 수
select deptno, count(*), count(comm) from emp group by deptno;

-- 부서별 평균 급여가 2000 이상인 부서의 번호와 평균 급여
select deptno, avg(sal) from emp group by deptno having avg(sal) > 2000;
select deptno, avg(sal) as 평균급여 from emp group by deptno having 평균급여 > 2000;

select deptno, avg(sal) as 평균급여 from emp group by deptno having 평균급여 >= 2000 order by 평균급여 asc;
-- from group having select order

-- 부서별 급여중 최댓값, 최솟값을 구하고 최대 급여가 2900 이상인 부서만 출력
select deptno, max(sal), min(sal) from emp group by deptno having max(sal) >= 2900; 


-- ROLLUP : 중간 합계 보여줄때 사용하는 구문 WITH과 함께 사용
SELECT SUM(SAL * 12) FROM EMP;
SELECT DEPTNO, SUM(SAL * 12) FROM EMP group by DEPTNO WITH ROLLUP;

-- JOIN - 다수의 테이블에 공통된 데이터를 기준으로 검색하는 명령어 
SHOW TABLES;
SELECT * FROM BONUS;
SELECT * FROM DEPT;
DESC DEPT;
SELECT * FROM SALGRADE;

-- INNER JOIN - ON절 조건(결합 조건)이 일치하는 결과만 출력
-- 사원이름, 사번, 부서위치 정보 검색 후 출력
SELECT ENAME, EMPNO, LOC, A.DEPTNO FROM EMP A JOIN DEPT B ON A.DEPTNO = B.DEPTNO;
SELECT ENAME, EMPNO, LOC FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO;

SELECT ENAME, EMPNO, LOC FROM EMP A JOIN DEPT B ON A.DEPTNO = B.DEPTNO WHERE A.ENAME = 'SMITH';

SELECT EMPNO, ENAME, A.DEPTNO, LOC FROM EMP A JOIN DEPT B ON A.DEPTNO = B.DEPTNO;

-- 뉴욕에 근무하는 사원의 이름, 급여 검색 후 출력
SELECT ENAME, SAL FROM EMP JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO WHERE DEPT.LOC = 'NEW YORK';
SELECT ENAME, HIREDATE FROM EMP A JOIN DEPT B ON A.DEPTNO = B.DEPTNO WHERE B.DNAME = 'ACCOUNTING';
SELECT A.ENAME, B.DNAME FROM EMP A JOIN DEPT B ON A.DEPTNO = B.DEPTNO WHERE A.JOB = 'MANAGER';

-- 비동등 조인 : EMP, SALGRADE
-- 사원의 급여가 몇 등급인지 검색 후 출력?

SELECT * FROM salgrade;
SELECT * FROM EMP;

SELECT A.ENAME, B.GRADE FROM EMP A , SALGRADE B WHERE A.SAL BETWEEN B.LOSAL AND B.HISAL; 

-- SELF JOIN : EMP 2개
-- EMP를 마치 두개의 테이블인ㅇ것처럼 사용 할 예정
select * FROM EMP;
-- SMITH 사원의 매니저 이름
SELECT M.ENAME FROM EMP E, EMP M WHERE E.ENAME = 'SMITH' AND E.MGR = M.EMPNO;
-- 매니저가 KING인 사원의 이름과 직무
SELECT E.ENAME FROM EMP E, EMP M WHERE M.ENAME = 'KING' AND E.MGR = M.EMPNO;
SELECT * FROM EMP;
-- 스미스와 동일 근무지역에서 근무하는 사원의 이름 검색 후 출력
-- 추가 조건 - 스미스는 검색 되어서는 안됨
SELECT M.ENAME FROM EMP E, EMP M WHERE E.ENAME = 'SMITH' AND M.DEPTNO = E.DEPTNO AND M.ENAME !='SMITH'; 
-- 모든 사람의 모든 매니저 이름까지 포함한 결과 검색
SELECT * FROM EMP;

-- 매니저가 없는 사원이 있을 수 있음
-- 매니저가 있는 사원이 있음
select E.ENAME, M.ENAME FROM EMP E, EMP M WHERE E.MGR = M.EMPNO;
-- 논리적으로 발견한 오류 : 매니저가 없는 사원의 정보는 검색 불가능
-- KING의 MGR은 NULL, NULL이어도 출력하게 해야 함 --> OUTER JOIN

-- OUTER JOIN
SELECT E.ENAME 사원명, M.ENAME 매니저명 FROM EMP E LEFT JOIN EMP M ON E.MGR = M.EMPNO;

-- 부서 테이블 40번 부서와 조인할 사원 테이블에 정보가 없지만 OUTER JOIN을 이용하여 40번 부서의 부서 이름도 검색 후 출력
SELECT * FROM DEPT;

SELECT E.ENAME, D.DNAME, D.DEPTNO FROM EMP E RIGHT JOIN DEPT D ON E.DEPTNO = D.DEPTNO;

-- SUB QUERY
-- SELECT절 내에 포함된 또 다른 SELECT절
-- 서브쿼리는 소괄호로 표시하고 메인쿼리보다 먼저 실행된다.
SELECT 컬럼, (서브쿼리) -- 1 : 스칼라
FROM 테이블, (서브쿼리) -- 2 : 인라인
WHERE 조건절 (서브쿼리); -- 3 : 중첩 서브쿼리;

-- SMITH라는 직원의 부서명 검색 후 출력

SELECT D.DNAME FROM EMP E, DEPT D WHERE E.ENAME = 'SMITH' AND E.DEPTNO = D.DEPTNO;
-- 서브쿼리로 변경 가능
SELECT D.DNAME FROM DEPT D WHERE D.DEPTNO = (SELECT EMP.DEPTNO FROM EMP WHERE EMP.ENAME ='SMITH'); 

-- SMITH와 동일한 직무를 가진 사원을 검색 스미스 포함 

SELECT M.ENAME FROM EMP E , EMP M WHERE E.ENAME = 'SMITH' AND E.JOB = M.JOB;
SELECT M.ENAME FROM EMP E INNER JOIN EMP M ON E.JOB = M.JOB WHERE E.ENAME = 'SMITH';
SELECT M.ENAME FROM EMP M WHERE M.JOB = (SELECT EMP.JOB FROM EMP WHERE EMP.ENAME = 'SMITH');




select M.ENAME, M.JOB FROM EMP E, EMP M WHERE E.ENAME = 'SMITH' AND E.JOB = M.JOB;
SELECT E.ENAME, E.JOB FROM EMP E WHERE E.JOB = (SELECT EMP.JOB FROM EMP WHERE EMP.ENAME = 'SMITH');
-- 스미스와 급여가 동일하거나 더 많은 사원의 이름과 급여 검색 후 출력


select M.ENAME, M.SAL FROM EMP E, EMP M WHERE E.ENAME = 'SMITH' AND M.SAL >= E.SAL; 
SELECT M.ENAME, M.SAL FROM EMP E INNER JOIN EMP M ON M.SAL>=E.SAL WHERE E.ENAME = 'SMITH';
SELECT M.ENAME, M.SAL FROM EMP M WHERE M.SAL >= (SELECT SAL FROM EMP WHERE ENAME = 'SMITH');




select M.ENAME, M.SAL FROM EMP E, EMP M WHERE E.ENAME = 'SMITH' AND E.SAL <= M.SAL AND M.ENAME!='SMITH';
SELECT E.ENAME, E.SAL FROM EMP E WHERE E.SAL >= (SELECT EMP.SAL FROM EMP WHERE EMP.ENAME = 'SMITH') AND E.ENAME!='SMITH';
-- DALLAS에 근무하는 사원의 이름과 부서번호 검색 후 출력

SELECT * FROM DEPT;
SELECT E.ENAME, E.DEPTNO FROM EMP E, DEPT D WHERE D.LOC = 'DALLAS' AND D.DEPTNO = E.DEPTNO;
SELECT E.ENAME, E.DEPTNO FROM EMP E WHERE E.DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC = 'DALLAS');
SELECT E.ENAME, E.DEPTNO FROM EMP E INNER JOIN DEPT D ON E.DEPTNO = D.DEPTNO WHERE LOC = 'DALLAS'; 






select * FROM DEPT;
SELECT E.ENAME, E.DEPTNO FROM EMP E WHERE E.DEPTNO = (SELECT DEPT.DEPTNO FROM DEPT WHERE DEPT.LOC = 'DALLAS');
SELECT E.ENAME, E.DEPTNO FROM EMP E , DEPT D WHERE E.DEPTNO = D.DEPTNO AND D.LOC = 'DALLAS';
-- 서브쿼리가 조인으로 완벽하게 대체될 수 없는 경우
-- 서브쿼리가 결과 값 하나만을 반환하고 그 값을 WHERE절에서 외부 쿼리값과 비교할때 
-- 서브쿼리가 ALL 연산자 안에 들어있을 경우


-- 연산자 정리
SELECT * FROM EMP WHERE SAL IN (800, 950, 123);
SELECT * FROM EMP WHERE SAL = ANY(SELECT SAL FROM EMP WHERE SAL > 800);
SELECT * FROM EMP WHERE SAL  = ALL(SELECT SAL FROM EMP WHERE SAL > 100);

SELECT EMPNO, SAL
FROM EMP
WHERE SAL = ALL(SELECT SAL
			  FROM EMP
			  WHERE SAL > 100);

SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE DEPTNO IN (10, 20);

-- ANY
SELECT EMPNO, SAL
FROM EMP
WHERE SAL >= (SELECT SAL
			  FROM EMP
			  WHERE SAL > 1000);

SELECT EMPNO, SAL
FROM EMP
WHERE SAL >= ANY(SELECT SAL
			  FROM EMP
			  WHERE SAL > 1000);

SELECT EMPNO, SAL
FROM EMP
WHERE SAL = ANY(SELECT SAL
			  FROM EMP
			  WHERE SAL > 1000);

SELECT EMPNO, SAL
FROM EMP
WHERE SAL IN (1600, 1250, 2975, 1250, 2850 ); -- 위의 12개 결과값이 담겨져 있는 형태)

-- ALL 
SELECT EMPNO, SAL
FROM EMP
WHERE SAL = ALL(SELECT SAL
			  FROM EMP
			  WHERE SAL > 1000);

SELECT EMPNO, SAL
FROM EMP
WHERE SAL = 1600 AND SAL = 1250 AND SAL =2975;


-- 04.27
-- UNION
USE SCOTT;
SELECT ENAME FROM EMP
union ALL
SELECT DEPTNO FROM DEPT;

SELECT ENAME FROM EMP
union ALL
SELECT ENAME FROM EMP;

-- UNION - 중복제거 후 합침, UNION ALL - 중복 포함 합침

-- OUTER JOIN : FULL OTHER JOIN - 합집합(잘 안씀) 유니온으로 대체 가능
-- EMP, DEPT
SELECT ENAME, EMP.DEPTNO, DNAME FROM EMP LEFT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
UNION ALL
SELECT ENAME, EMP.DEPTNO, DNAME FROM EMP RIGHT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO;

SELECT * FROM DEPT;


-- DDL
-- 테이블을 생성 삭제 수정
-- TABLE 생성 : CREATE
CREATE TABLE USER (INUM INT PRIMARY KEY auto_increment, INAME VARCHAR(5));
SELECT * FROM USER;
INSERT INTO USER (INAME) VALUES ('정영훈');
UPDATE USER SET INAME = '영훈' WHERE INAME = '정영훈';
DELETE FROM USER WHERE INUM = 1;
-- TABLE 삭제 : DROP
DROP TABLE USER;
-- CTAS
CREATE TABLE emp01 AS (SELECT * FROM emp);
SHOW TABLES;
SELECT * FROM EMP01;
DROP TABLE EMP01;

-- 구조만 복사
CREATE TABLE EMP01 AS (select * FROM EMP WHERE 1=0);
SELECT * FROM EMP01;

-- EMP 테이블에 사번만 참조하는 EMP 02 테이블 생성
CREATE TABLE EMP02 AS (select EMPNO FROM EMP);

CREATE TABLE EMP03 AS (SELECT EMPNO, ENAME, DEPTNO FROM EMP WHERE DEPTNO = 30);

SHOW TABLES;
SELECT * FROM EMP02;
SELECT * FROM EMP03;
SELECT * FROM EMP WHERE DEPTNO = 30;

-- 테이블 수정 : ALTER
CREATE TABLE EMP01 AS (SELECT EMPNO, ENAME FROM EMP);
SELECT * FROM EMP01;
ALTER TABLE EMP01 ADD COLUMN job VARCHAR(10);
DESC EMP01;

-- EMP01 테이블에 JOB 컬럼의 길이를 변경
ALTER TABLE EMP01 modify job varchar(30);
desc emp01;
-- 컬럼 이름 변경 및 데이터 타입 변경
ALTER TABLE EMP01 CHANGE job JOB VARCHAR(20);
ALTER TABLE EMP01 CHANGE EMPNO EMPNO VARCHAR(20);

-- 컬럼 순서 변경
ALTER TABLE EMP01 modify JOB VARCHAR(10) AFTER EMPNO;
SELECT * FROM EMP01;
desc emp01;

-- 디폴트 값 설정
ALTER TABLE EMP01 ALTER COLUMN JOB SET DEFAULT 'MUZIK';
DESC EMP01;

-- truncate() : 테이블은 살려두고 안의 데이터를 모두 삭제
truncate EMP01;
DESC EMP01;
SELECT * FROM EMP01;

-- DML
-- INSERT, UPDATE, DELETE
-- QUERY(SELECT) + DML(INSERT/UPDATE/DELETE)
-- CRUD
drop table people;
CREATE TABLE people( NAME VARCHAR(10),  AGE INT(3));
SHOW TABLES;
insert into people (name, age) values('영훈', 25);
select * from people;

drop table emp01;
create table emp01 as select empno, ename, deptno from emp where false;
truncate emp01;
select * from emp01;

insert into emp01(empno, ename, deptno) values(0001, 'mysql', 50);
insert into emp01(empno, ename, deptno) values(0002, 'mysql2', 50);
insert into emp01(empno, ename, deptno) values(0003, 'mysql3', 50);

-- BULK INSERT
insert into emp01 values(0001, 'mysql', 50),(0002, 'mysql2', 50), (0003, 'mysql3', 50);

-- UPDATE
DROP TABLE EMP01;
CREATE TABLE EMP01 AS SELECT deptno FROM emp;
SELECT * FROM EMP01;

UPDATE EMP01 SET DEPTNO = 60 WHERE DEPTNO = 10;

-- 원래의 상태로 되돌림
rollback ;

-- 현재 DB에 새롭게 수행된 DML의 모든 결과값을 DB에 영구 적용
COMMIT;

-- 자동커밋 변경
SELECT @@autocommit; -- 현재 상태 확인 (1이면 자동 커밋중이라는것)
SET autocommit = 1;

UPDATE EMP01 SET DEPTNO = 10 WHERE DEPTNO = 60;
SELECT * FROM EMP01;
ROLLBACK;

-- EMP 테이블로부터 사번, 급여, 입사일 사원이름 순으로 EMP01 테이블 생성]
DROP TABLE EMP01;
CREATE TABLE EMP01 AS SELECT EMPNO, SAL, HIREDATE, ENAME FROM EMP;
SELECT * FROM EMP01;
-- EMP 01 모든 사원의 입사일을 오늘로 변경
UPDATE EMP01 SET HIREDATE = NOW();

-- 급여가 3000이상인 사원의 급여를 10% 인상
UPDATE EMP01 SET SAL = SAL + SAL*1/10 WHERE SAL >=3000;
SELECT * FROM DEPT;
SELECT * FROM EMP01;
SELECT * FROM EMP;
-- EMP01 테이블에 근무지역이 DALLAS인 부서의 소속 사원들의 급여만 1000인상한 결과 출력(서브쿼리 사용)
SELECT ENAME, EMPNO, LOC FROM EMP A JOIN DEPT B ON A.DEPTNO = B.DEPTNO WHERE A.ENAME = 'SMITH';
SELECT EMP.SAL FROM EMP inner JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO WHERE DEPT.LOC = 'DALLAS';
UPDATE EMP01 SET SAL = SAL + 1000 WHERE EMP01.ENAME IN (SELECT EMP.ENAME FROM EMP WHERE EMP.DEPTNO = (SELECT DEPT.DEPTNO FROM DEPT WHERE DEPT.LOC = 'DALLAS'));

UPDATE emp01
SET sal = sal + 1000
WHERE ename IN (
	SELECT e.ename
    FROM dept d, emp e
    WHERE d.deptno = e.deptno
    AND d.LOC = 'DALLAS'
);

-- EMP 01 테이블에서 COMM이 NULL인 사원 삭제
DROP TABLE EMP01;
CREATE TABLE EMP01 AS SELECT * FROM EMP;
SELECT * FROM EMP01;

DELETE FROM EMP01 WHERE COMM IS NULL;
ROLLBACK;
-- EMP01 테이블에서 부서명이 RESERCH인 부서에 소속된 사원들만 삭제
DELETE FROM EMP01 WHERE DEPTNO IN (SELECT DEPTNO FROM DEPT WHERE DNAME = 'RESEARCH');
SELECT * FROM EMP01;

SELECT * FROM EMP01 LIMIT 3;
DESC EMP;
DESC EMP01;

-- INTEGRITY (무결성)

SELECT *  FROM information_schema.table_constraints
WHERE CONSTRAINT_SCHEMA = 'SCOTT';

-- 제약조건 생성(create)
DROP TABLE EMP01;
CREATE TABLE EMP01( empno int(4), ename varchar(10), primary key (empno));
show tables;
desc emp01;

insert into emp01(ename) values ('MySQL'); -- 1364 error
insert into emp01 values (1, 'MySQL'); -- 1062 error
SELECT * FROM EMP01;

-- 제약조건 생성(alter)
DROP TABLE EMP01;
CREATE TABLE EMP01( empno int(4), ename varchar(10));
show tables;
desc emp01;

alter table emp01 add constraint primary key (empno);

-- REFERENCES KEY (foreign key)
-- 제약조건 생성

DROP TABLE EMP02;

CREATE TABLE EMP02(empno int(4), ename varchar(10), deptno int(4), foreign key (deptno) REFERENCES dept (deptno) );
DESC EMP02;

INSERT INTO EMP02 VALUES (1, 'MySQL', 30);
INSERT INTO EMP02 VALUES (1, 'MySQL', 50); -- 1452 ERROR
SELECT * FROM EMP02;

-- 제약 조건 생성(ALTER)

DROP TABLE EMP02;

CREATE TABLE EMP02(empno int(4), ename varchar(10), deptno int(4));
DESC EMP02;

ALTER TABLE EMP02 ADD constraint FOREIGN KEY (deptno) REFERENCES dept (deptno);

DESC EMP02;


create table snack (isnack int(100) PRIMARY KEY auto_increment, sname varchar(20), company varchar(20));
desc snack;
select * from snack;
insert into snack(sname, company) values('홈런볼', '롯데'), ('오레오', '동서식품'), ('초코파이', '오리온'), ('뽀또', '크라운'),('포카칩', '오리온'),('초코송이', '오리온'),('고래밥', '오리온');
select * from snack;

create table user (iuser int(100) PRIMARY KEY auto_increment, name varchar(5), email varchar(30), day datetime(6), isnack int(100));
desc user;
ALTER TABLE user ADD constraint FOREIGN KEY (isnack) REFERENCES snack (isnack);
desc user;
insert into user(name, email, day, isnack) values('정영광', 'glory@naver.com', now(), 2), ('백성준', 'back@naver.com', now(), 2), ('성종헌', 'sung@naver.com', now(), 3), ('박정인', 'park@naver.com', now(), 5), ('신의진', 'sin@naver.com', now(), 7), ('정영훈', 'ju1234@naver.com', now(), 1);
select * from user;
UPDATE user SET isnack = 4 WHERE isnack = 2;
select * from user;
DELETE FROM user WHERE isnack =1;
select * from user;


-- CHECK 조건식과 같이 저장 직전의 데이터 유효 유무 검증하는 제약
DROP TABLE PEOPLE;
CREATE TABLE PEOPLE (NAME VARCHAR(20), AGE INT(3), GENDER CHAR(1) CHECK(GENDER IN ('F','M')));
alter table people drop name;
select * from people;

출처: https://mcpaint.tistory.com/194 [MC빼인트와 함께]
INSERT INTO PEOPLE VALUES('HI', 12, 'F'); 
INSERT INTO PEOPLE(NAME, AGE) VALUES('HI', 12); 
INSERT INTO PEOPLE (NAME, AGE) VALUES('HI', -15); -- 3819 ERROR : 체크 제약조건에 걸림
SELECT * FROM PEOPLE;

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = 'PEOPLE';

-- GENDER라는 컬럼에 데이터가 M 또는 F만 들어갈수있도록 제약조건을 설정
DROP TABLE PEOPLE;

ALTER TABLE PEOPLE ALTER COLUMN GENDER SET DEFAULT 'F';


-- 사용자 정의 변수 : 스토어드 프로시저, 트리거.....
-- 한정된 데이터만 값으로 지정할 수 있다.

-- 변수 사용법
-- @변수명(선언) -> @변수명 = 데이터(할당) : 선언과 할당이 이루어져야 한다
-- 초기화 : 선언 + 할당

SELECT @var;

SET @HEIGHT = 180;
SET @HEIGHT := 180;
SELECT @HEIGHT;

SET @var1 =3;
SET @var2 =23;
SET @var3 ='ENAME : ';

SELECT @var1 + @var2;
SELECT @var3, ename from emp;
select * from emp where deptno between @var1 and @var2;

-- 지역 변수(Local Variable)
-- 시스템 변수(Global Variable 전역 변수) : 서버 전체에 영향을 미치는 변수
show variables;
show global variables;
show variables like '%session';

-- 조건문(if)
-- 기본 조건문 : IF(조건, '참일때 결과', '거짓일때 결과');
SELECT IF(1 < 1 , '참', '거짓') AS '참거짓';

SET @num = 30;
select if(@num > 20, '참', '거짓') as 결과값;

-- emp 테이블에서 sal이 2500 이상이면 'nice' 출력 거짓이면 'omg' 출력
select ename, if(sal >= 2500, 'nice', 'omg') from emp;

-- case
-- when 조건1 then 결과값1
-- when 조건1 then 결과값1
-- else 결과값
-- end

-- SALGRADE
SELECT * FROM SALGRADE;
SELECT GRADE, 
	CASE 
		WHEN GRADE = 1 THEN '아이언' 
		WHEN GRADE = 2 THEN '브론즈'
		WHEN GRADE = 3 THEN '실버' 
		WHEN GRADE = 4 THEN '골드' 
		WHEN GRADE = 5 THEN '플레티넘' 
	END AS 티어
FROM SALGRADE;

-- CASE문을 IF문으로 바꿔라

SELECT GRADE, IF(GRADE = 1, '아이언', IF(GRADE = 2, '실버', IF(GRADE = 3, '브론즈', IF(GRADE =4, '골드', '플레티넘')))) AS 티어 FROM salgrade;

-- IF
-- ELSE IF
-- ELSE
-- END IF

-- 실습 위한 DB 설정
select * from buytbl;
select * from usertbl;


select userID, case
    WHEN price > 50 THEN 'regular' 
    WHEN price > 1000 THEN 'vvip' 
    end as grade
    FROM buytbl where price in (SELECT price*amount FROM buytbl left JOIN usertbl ON buytbl.userID = usertbl.userID);

select u.userID, u.name, sum(b.price * b.amount) as TOTAL_PRICE, case
when sum(b.price * b.amount) <= 200 THEN 'REGULAR'
when sum(b.price * b.amount) < 1300 THEN 'VIP'
when sum(b.price * b.amount) > 1500 THEN 'VVIP'
when sum(b.price * b.amount) is null then 'REST'
end as GRADE
FROM usertbl u left join buytbl b on b.userID = u.userID group by u.name order by TOTAL_PRICE desc;










SELECT U.userID, U.name, sum(B.price * B.amount) AS TOTAL_PRICE, CASE
WHEN sum(B.price * B.amount) <= 200 THEN 'REGULAR' 
WHEN sum(B.price * B.amount) < 1300 THEN 'VIP' 
WHEN sum(B.price * B.amount) > 1300 THEN 'VVIP' 
WHEN sum(B.price * B.amount) IS NULL THEN 'REST'
END AS GRADE 
FROM usertbl U LEFT JOIN buytbl B ON U.userID = B.userID GROUP BY U.name ORDER BY TOTAL_PRICE DESC;


-- 임시 테이블 (Temporary) : 잠시 사용하는 임의의 테이블, 동일한 세션 내에서만 존재, 생성한 클라이언트만 사용 가능
DESC buytbl;
CREATE TEMPORARY TABLE IF NOT EXISTS buytblTemp AS SELECT * FROM buytbl;
DROP TABLE buytblTemp;
DESC buytblTemp;

-- step 02 
CREATE TEMPORARY TABLE IF NOT EXISTS buytbl AS SELECT * FROM buytbl;
DROP TABLE buytbl;
DESC buytbl;

use scott;
select * from emp;

-- VIEW : 물리적으로는 존재하지 않음, 즉 논리적으로만 존재한다 - 가상 테이블 
-- 보안을 고려해야 하는 특정 컬럼을 숨길 수 있음
-- 여러개의 테이블에 조인된 결과를 활용해야 하는 경우
USE SCOTT;
DROP TABLE dept01;
CREATE TABLE dept01 AS SELECT * FROM DEPT;
DESC dept01;

-- v_dept01 
create view v_dept01 as select * from dept01;

desc v_dept01;
select * from v_dept01;
select * from dept01;

drop view v_dept01;
select * from emp;
-- emp 테이블에서 comm 제외한 emp01_v 뷰 만들기
create view emp01_v as select empno, ename, sal from emp;
desc emp01_v;
select * from emp01_v;
show tables;

-- v_dept01에 CRUD v_dept01 - dept01 변화

select * from v_dept01;
insert into v_dept01 values (50, 'PROGRAMING', '부산');
SELECT * FROM dept01;
delete from v_dept01 where deptno = 50;
-- 원본 테이블에 영향이 있음(기본적으로는 영향이 없지만 권한 문제로 영향을 줌)
-- 해당 사원의 정보 검색(empno, ename, deptno, loc)

drop table emp01;
create table emp01 as select empno, ename, emp.deptno, loc from emp, dept where emp.deptno = dept.deptno;
select * from emp01;

create table emp01 as select * from emp;
create view v_emp01_dept01 as select empno, ename, emp01.deptno, loc from emp01, dept01 where emp01.deptno = dept01.deptno;
select * from v_emp01_dept01;

-- VIEW 정보 열람
SELECT * FROM INFORMATION_SCHEMA.VIEWS;
select empno, ename, emp01.deptno, loc from emp01, dept01 where emp01.deptno = dept01.deptno;

-- VIEW를 통해 CRUD 안되는 경우도 있음
-- 1. 집계 함수(GROUP BY)를 사용한 뷰
-- 2. JOIN, UNION 사용한 뷰

-- ROWNUM : DB엔진 내부에서 자체적으로 매기는 결과값의 순서
SET @rownum := 0;
select @rownum := @rownum+1, empno from emp; 

-- dept 테이블의 deptno를 내림차순으로 정렬 및 출력 && rownum 포함
set @rownum := 0;
select @rownum :=@rownum+1, deptno from dept order by @rownum DESC;

-- deptno 의 값을 오름차순으로 정렬 && 30번까지만 검색 및 출력
set @rownum := 0;
select @rownum :=@rownum+1, deptno from dept where deptno <=30 order by DEPTNO desc;

-- ROWNUM 초기화
-- FROM절에서 초기화 하는 법 : (SELECT @rownum := 0) as rownum
select @rownum := @rownum +1, deptno
from dept, (select @rownum :=0) as rownum;
-- where절에서 초기화 하는 법 : (@rownum :=0) = 0
select @rownum := @rownum +1, deptno
from dept where (@rownum :=0) = 0;

-- emp 테이블
-- deptno의 값을 오름차순으로 정렬하되, 상위 3개의 데이터만 검색 + rownum 포함
select @rownum := @rownum + 1, deptno from emp where @rownum < 3 and (@rownum :=0) = 0 order by deptno asc;
-- emp 테이블에서 최근에 입사한 순서대로 5명만 출력
select @rownum := @rownum + 1, hiredate from emp, (select @rownum := 0) as rownum where rownum < 5 order by emp.hiredate desc;
select * from (select @rownum := @rownum + 1 as rn, ename, hiredate from emp, (select @rownum := 0) as rn1 order by hiredate desc) as sub where rn <=5;
select * from emp;

-- ? 급여가 많은 순서대로 3명을 출력하되, 이름과 급여 포함
select * from (select @rownum := @rownum + 1 as rn, ename, sal from emp, (select @rownum := 0) as rn1 order by sal desc) as sub where rn <=5;


delete from user where iuser = 1;
desc user;
ALTER TABLE user AUTO_INCREMENT = 1;
 
select * from user;

-- sequence(auto increment) : 순차적으로 번호를 자동 반영
-- 기본 1씩 자동 증가
-- 절대로 중복 불가능

-- 조회
show tables;

create table people(id int primary key auto_increment, name varchar(20));
select * from people;

delete from people where id = 4;
insert into people (name) values("aa");
-- 값을 변경
alter table people auto_increment = 20;
select * from people;
show table status;
set @count :=0;
UPDATE people set id = @count := @count+1;
select * from people;
insert into people (name) values(" ");
insert into people (name) values("");
insert into people  values();

select * from people limit 3, 2;

-- programming
-- 스토어드 프로시져 : 쿼리의 집합으로 특정 기능을 일괄적으로 처리
DELIMITER $$
CREATE PROCEDURE 프로시저명(매개변수)
BEGIN
	프로그래밍
END $$
DELIMITER ;

-- 사용 방법
CALL 프로시저명(매개변수);

-- 실습 : 생성 및 사용
DELIMITER $$
CREATE PROCEDURE firstProc()
BEGIN
	select * from emp;
END $$
DELIMITER ;

call firstProc();

-- 기본(매개변수) : 생성 및 사용 -- 7369 사원이 입사한지 5년이 넘었나?
DELIMITER $$
CREATE PROCEDURE ifProc()
BEGIN
	declare hiredate date;
    declare working_day int;
	select e.hiredate into hiredate from emp e where e.empno = 7369;
	set working_day = datediff(current_date(), hiredate);
    
    if(working_day/365) >= 5 then select '5년';
    else select '아직';
    end if;
END $$
DELIMITER ;

call ifProc();

DELIMITER $$
CREATE PROCEDURE getLoc(IN i_empno INT)
BEGIN
	SELECT DEPT.LOC FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO AND EMP.EMPNO = i_empno;
END $$
DELIMITER ;

call getLoc(7369);

DELIMITER $$
CREATE PROCEDURE getLoc2(IN i_empno INT, OUT o_loc varchar(20))
BEGIN
	SELECT DEPT.LOC INTO o_loc FROM EMP, DEPT WHERE EMP.DEPTNO = DEPT.DEPTNO AND EMP.EMPNO = i_empno;
END $$
DELIMITER ;

call getLoc2(7369, @o_loc);
select @o_loc;

-- 사원번호로 사원이름, 부서번호, 입사일자 출력하는 프로시저 만들기
DROP PROCEDURE getTest;
DROP PROCEDURE IF EXISTS getTest;

DELIMITER $$
CREATE PROCEDURE getTest(IN i_empno INT, OUT o_ename VARCHAR(10), OUT o_deptno INT, OUT o_hiredate DATE)
BEGIN
	SELECT ename, deptno, hiredate INTO o_ename, o_deptno, o_hiredate FROM emp WHERE empno = i_empno;
END $$
DELIMITER ;

CALL getTest(7369, @o_ename, @o_deptno, @o_hiredate);
SELECT @o_ename, @o_deptno, @o_hiredate;