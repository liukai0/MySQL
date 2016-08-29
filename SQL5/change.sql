-- 	***************************************************
-- 		^> File Name: change.sql
-- 		^> Author: T-Rex
-- 		^> Mail: 1010026261@qq.com
-- 		^> Created Time: 2016/08/18 - 22:00:25
-- 	***************************************************

#删除数据库
DROP DATABASE test_01

#重命名一张表
RENAME TABLE 原名 TO 新名;
ALTER TABLE 原名 TO 新名;
ALTER TABLE 原名 RENAME TO 新名;

RENAME TABLE table_1 TO table_2;

#删除一张表
DROP TABLE 表名字;

DROP TABLE table_2;

#增加一列
ALTER TABLE 表名字 ADD COLUMN 列名字 数据类型 约束;
ALTER TABLE 表名字 ADD 列名字 数据类型 约束;

ALTER TABLE employee ADD height INT(4) DEFAULT 170;
ALTER TABLE employee ADD weight INT(4) DEFAULT 120 AFTER age;
ALTER TABLE employee ADD test INT(10) DEFAULT 11 FIRST;

#删除一列
ALTER TABLE 表名字 DROP COLUMN 列名字;
ALTER TABLE 表名字 DROP 列名字;

ALTER TABLE employee DROP test;

#重命名一列
ALTER TABLE 表名字 CHANGE 原列名 新列名 数据类型 约束;

#改变数据类型
ALTER TABLE 表名字 MODIFY 列名字 新数据类型;

#修改表中某个值
UPDATE 表名字 SET 列1=值1,列2=值2 WHERE 条件;

UPDATE employee SET age=21,salary=3000 WHERE name='Tom';

#删除一行记录
DELETE FROM 表名字 WHERE 条件;

DELETE FROM employee WHERE name='Tom';
