SHOW DATABASES;

-- dialect 方言

CREATE DATABASE db_1702;

DROP DATABASE db_1702;

CREATE DATABASE db_1702;

USE db_1702;

SHOW TABLES;

CREATE TABLE t_student (
  sno    VARBINARY(10), -- varbinary 可变长字符类型
  sname  VARBINARY(10),
  gender CHAR(1),
  age    INT(2)
);

SELECT *
FROM t_student;

INSERT INTO t_student
  VALUE ('2017001', '张三', '男', 18);
