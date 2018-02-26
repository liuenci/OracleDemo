--分组数据

-- 创建分组
select vend_id,count(*) as num_prods from products where vend_id='DLL01' group by vend_id;

-- HAVING过滤分组
select cust_id,count(*) as orders from orders group by cust_id having count(*) >=2;
-- 执行顺序先左再右，执行where再执行having
select vend_id,count(*) as num_prods from products where prod_price>=4 group by vend_id having count(*)>=2;

--分组和排序
select order_num,count(*) as items from orderItems group by order_num having count(*)>=3 order by items,order_num;

--select 子句顺序
select -> from -> where -> group by -> having -> order by
