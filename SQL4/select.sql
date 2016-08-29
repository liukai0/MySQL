-- 	***************************************************
-- 		^> File Name: select.sql
-- 		^> Author: T-Rex
-- 		^> Mail: 1010026261@qq.com
-- 		^> Created Time: 2016/08/17 - 21:41:22
-- 	***************************************************

#基本的SELECT语句
SELECT name,age FROM employee;

#数学符号条件
SELECT name,age FROM employee WHERE age>25;

SELECT name,age,phone FROM employee WHERE name='Mary';

# AND 与 OR
SELECT name,age FROM employee WHERE age<25 OR age>30;

SELECT name,age FROM employee WHERE age>25 AND age<30;

# IN 和 NOT IN
SELECT name,age,phone,in_dpt FROM employee WHERE in_dpt IN ('dpt3','dpt4');

SELECT name,age,phone,in_dpt FROM employee WHERE in_dpt NOT IN ('dpt1','dpt3');

#通配符 _:一个未指定字符 %:不定个未指定字符
SELECT name,age,phone FROM employee WHERE phone LIKE '1101__';

SELECT name,age,phone FROM employee WHERE name LIKE 'J%';

#对结果排序
SELECT name,age,salary,phone FROM employee ORDER BY salary DESC;

#SQL内置函数和计算 AS给值重新命名
SELECT MAX(salary) AS max_salary,MIN(salary) FROM employee;

#子查询
SELECT of_dpt,COUNT(proj_name) AS count_project FROM project
WHERE of_dpt IN
(SELECT in_dpt FROM employee WHERE name='Tom');

#连接查询
SELECT id,name,people_num
FROM employee,department
WHERE employee,in_dpt = department.dpt_name
ORDER BY id;

SELECT if,name,people_num
FROM employee JOIN department
ON employee.in_dpt = department.dpt_name
ORDER BY id;
