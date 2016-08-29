-- 	***************************************************
-- 		^> File Name: other.sql
-- 		^> Author: T-Rex
-- 		^> Mail: 1010026261@qq.com
-- 		^> Created Time: 2016/08/18 - 22:43:02
-- 	***************************************************

#索引
ALTER TABLE 表名字 ADD INDEX 索引名 (列名);
CREATE INDEX 索引名 ON 表名字 (列名);

ALTER TABLE employee ADD INDEX idx_id (id);

CREATE INDEX idx_name ON employee (name);

#视图
CREATE VIEW 视图名(列a,列b,列c) AS SELECT 列1,列2,列3 FROM 表名字;

CREATE VIEW v_emp(v_name,v_age,v_phone) AS SELECT name,age,phone FROM employee;

#导入
LOAD DATA INFILE '文件路径' INTO TABLE 表名字;

LOAD DATA INFILE '/tmp/SQL6/in.txt' INTO TABLE employee;

#导出
SELECT 列1,列2 INTO OUTFILE '文件路径和文件名' FROM 表名字;

SELECT # INTO OUTFILE '/tmp/out.txt' FROM employee;

#备份
mysqldump -u root 数据库名>备份文件名;
mysqldump -u root 数据库名 表名字>备份文件名;

mysqldump -u root mysql_shiyan > bak.sql;

#恢复
source /tmp/SQL6/MySQL-06.sql

CREATE DATABASE test;
mysql -u root test < bak.sql

#插入
INSERT INTO 表名 VALUES (各个值)
