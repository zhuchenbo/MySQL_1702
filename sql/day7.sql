
SHOW DATABASES;

SELECT
  e.ENAME,-- 员工名字
  d.DNAME -- 部门名字
FROM scott.emp e INNER JOIN scott.dept d
# ON e.DEPTNO = d.DEPTNO;
USING (DEPTNO);

SELECT *
FROM scott.emp -- 可以查询奖金不是 300 的
WHERE NOT (COMM <=> 300);

CREATE VIEW scott.v_emp
  AS SELECT JOB,
  HIREDATE,
  SAL
  FROM scott.emp
  WHERE DEPTNO=20;

USE scott;
SHOW TABLES ;
DROP VIEW v_emp;

SELECT *
FROM scott.v_emp;

UPDATE scott.emp
    SET HIREDATE='1981-5-1'
WHERE HIREDATE='1981-4-2';
