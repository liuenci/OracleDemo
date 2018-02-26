-- 高级数据过滤

-- 组合WHERE子句

-- AND操作符,多个条件要用多个and连接
select prod_id,prod_price,prod_name from products where vend_id = 'DLL01' and prod_price <=4 and  prod_id = 'BNBG01';

-- OR操作符
select prod_name,prod_price from products where vend_id ='DLL01' or vend_id = 'BRS01';

-- 求值顺序,先执行and操作，再执行or操作
SELECT prod_name,prod_price from products where vend_id ='DLL01' or vend_id = 'BRS01' and prod_price >= 10;
SELECT prod_name,prod_price from products where (vend_id ='DLL01' or vend_id = 'BRS01') and prod_price >= 10;

-- IN操作符 IN操作符比or操作符执行的更快，IN还能包含select语句
select prod_name,vend_id,prod_price from products where vend_id in ('DLL01','BRS01') order by prod_name;

-- NOT操作符
select prod_name from products where not vend_id = 'DLL01' order by prod_name;