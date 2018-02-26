-- 用通配符进行过滤

-- LIKE操作符,单引号中的字符串区分发大小写，通配符不匹配null
select prod_id,prod_name from products where prod_name like 'Fish%';
select prod_id,prod_name from products where prod_name like '%bean bag%';
select prod_id,prod_name from products where prod_name like 'F%y%'; -- 查询以F开头y结尾

-- 下划线（_）通配符
select prod_id,prod_name from products where trim(prod_name) like '_ inch teddy bear';
select prod_id,prod_name from products where trim(prod_name) like '% inch teddy bear';

-- 通配符的技巧
-- 通配符很有用，但是搜索时间比其他的搜索时间长
-- 能用其他操作符的尽量不要使用通配符
-- 把通配符放在开始处的搜索时间是最慢的
-- 仔细注意通配符的位置，放错位置可能返回不了想要的数据