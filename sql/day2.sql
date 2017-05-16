DROP TABLE db_1702.student;

CREATE TABLE db_1702.student (
  name VARBINARY(10),
  intro TEXT,
  gender CHAR(2),
  age INT,
  height double(3,2),
  price DECIMAL(6,2),
  dob  DATE,-- date  of birth
  time DATETIME
);


INSERT INTO db_1702.student VALUE ('Tom','dasf','M',19,1.7,123.456,'1997-11-4','2017-5-6 10:39:10');

SELECT *
from db_1702.student;