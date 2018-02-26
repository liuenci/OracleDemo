-- 创建计算字段

-- 拼接字段
-- oracle
select vend_name || '('|| vend_country ||')' from vendors order by vend_name;
-- mysql
-- select contat(vend_name,'(',vend_country,')') from vendors order by vend_name;
select rtrim(vend_name)||'('||rtrim(vend_country)||')' from vendors order by vend_name;-- rtrim()去掉值右边的空格 ltrim()去掉左边的空格 trim()去掉两边的空格

-- 使用别名,或者导出列
select rtrim(vend_name)||'('||rtrim(vend_country)||')' as vend_title from vendors order by vend_name;

-- 执行算数运算
select prod_id ,quantity,item_price from orderitems where order_num = 20008;
select prod_id ,quantity,item_price ,quantity*item_price as expanded_price from orderitems where order_num = 20008;



