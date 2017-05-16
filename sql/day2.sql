DROP DATABASE IF EXISTS db_1702;
CREATE DATABASE db_1702;

DROP TABLE IF EXISTS db_1702.student;
CREATE TABLE db_1702.student(
  name VARBINARY(10) COMMENT '姓名',
  intro TEXT COMMENT '简介',
  gender CHAR(2) COMMENT '性别',
  age INT COMMENT '年龄',
  height double(3,2) COMMENT '身高',
  price DECIMAL(6,2) COMMENT '价格',
  dob  DATE COMMENT '出生日期',-- date of birth
  time DATETIME COMMENT '时间'
);

INSERT INTO db_1702.student VALUE ('Tom','dasf','M',19,1.7,123.456,'1997-11-4','2017-5-6 10:39:10');

SELECT *
from db_1702.student;