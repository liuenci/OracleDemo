-- 使用子查询

-- 利用子查询进行过滤
select order_num from orderitems where prod_id = 'RGAN01';
select cust_id from orders where order_num in (20007,20008);
-- 先执行括号内，再执行括号外
select cust_id from orders where order_num IN (select order_num from orderitems where prod_id = 'RGAN01');

select cust_name,cust_contact from customers where cust_id in (select cust_id from orders where order_num IN (select order_num from orderitems where prod_id = 'RGAN01'));

-- 作为计算手段使用子查询 完全限定列名
select cust_name,cust_state,(
select count(*) from orders where orders.cust_id=customers.cust_id) as orders
from customers order by cust_name;

-- 不限定列名，cust_id则都是orders表的字段
select cust_name,cust_state,(
select count(*) from orders where cust_id = cust_id) as orders 
from customers order by cust_name;