SHOW DATABASES;

SELECT *
FROM scott.emp;

-- <=>

SELECT *
FROM scott.emp -- 可以查询奖金为空的
WHERE COMM <=> NULL;

# 1. 返回拥有员工的部门名、部门号

SELECT DISTINCT
  dept.DEPTNO,
  DNAME
FROM scott.dept
  INNER JOIN scott.emp
    ON scott.emp.DEPTNO = scott.dept.DEPTNO;
-- 加别名做法
SELECT DISTINCT
  d.DEPTNO,
  d.DNAME
FROM scott.dept d
  INNER JOIN scott.emp e
    ON e.DEPTNO = d.DEPTNO;

# 3. 返回员工和所属经理的姓名

SELECT
  e1.ENAME 员工姓名,
  e2.ENAME 经理姓名
FROM scott.emp e1 INNER JOIN scott.emp e2 -- 自联接
    ON e1.MGR = e2.EMPNO;

# left outer join

SELECT
  e.ENAME,
  d.DNAME
FROM scott.emp e LEFT OUTER JOIN scott.dept d -- 左外联接
    ON e.DEPTNO = d.DEPTNO;

SELECT
  e.ENAME,
  d.DNAME
FROM scott.dept d RIGHT OUTER JOIN scott.emp e -- 右外联接
    ON e.DEPTNO = d.DEPTNO;