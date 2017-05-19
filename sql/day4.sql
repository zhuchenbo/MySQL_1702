SHOW FULL COLUMNS FROM db_1702.student;

# INSERT UPDATE DELETE

SELECT *
FROM db_1702.student;

INSERT INTO db_1702.student
VALUES (NULL, '20170002', 'tester', 'I\'m...', 'F', 19, 1.7, 1234567.891, '1999-5-1', '2017-5-2 01:39:01');

INSERT INTO db_1702.student (name)
  VALUE ('Tom');

INSERT INTO db_1702.student (name)
  VALUE ('N1'), ('N2'), ('N3'); -- 插入多条记录


SHOW CREATE TABLE db_1702.student; --  显示建表语句

SELECT *
FROM db_1702.student;

UPDATE db_1702.student
SET gender = '女';

UPDATE db_1702.student   --  更改更新字段
SET height = 1.7, name = '小猪', gender = '男', intro = 'Java', price = 9999999.999, dob = '1997-11-4',
  time     = '1997-11-4 5:20:00' -- 更改多个字段中间加逗号
WHERE id = 7; --  更改第几行 加第几行的 id


DELETE FROM db_1702.student
WHERE id = 15; -- 删除语句


SHOW DATABASES; -- 显示服务器中所有的库

SHOW TABLE STATUS FROM db_1702; -- 显示库中所有表的信息

SHOW TABLE STATUS
WHERE Name = '';

SHOW VARIABLES;

SHOW INDEX FROM db_1702.student;

SHOW CREATE TABLE db_1702.student;

SHOW DATABASES;

SHOW TABLE STATUS FROM scott;

SHOW FULL COLUMNS FROM scott.emp;
SHOW FULL COLUMNS FROM scott.dept;
SHOW FULL COLUMNS FROM scott.salgrade;

SELECT *
FROM scott.salgrade;
SELECT *
FROM scott.dept;
SELECT *
FROM scott.emp;

SELECT *
FROM scott.emp
ORDER BY DEPTNO DESC ,sal;-- asc ascend  上升     desc descend  下降

SELECT DEPTNO
FROM scott.emp
ORDER BY 1 DESC ,sal;