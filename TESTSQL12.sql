-- 创建高级联结
-- 使用表别名 下面这句不知道为什么运行有问题
select rtrim(vend_name) + '(' + rtrim(vend_country) + ')'  vend_title from Vendors order by vend_name;
select cust_name,cust_contact from CUSTOMERS C, Orders O, OrderItems OI where C.CUST_ID = O.cust_id and OI.order_num = O.order_num and prod_id = 'RGAN01';

-- 自联结
select cust_id,cust_name,cust_contact from Customers where cust_name = (select cust_name from Customers where cust_contact = 'Jim Jones'); -- 使用子查询
-- 使用联结的相同查询
select c1.cust_id,c1.cust_name,c1.cust_contact from Customers c1,Customers c2 where c1.cust_name = c2.cust_name and c2.cust_contact = 'Jim Jones';

-- 自然联结
select C.*, O.order_num,O.order_date,OI.prod_id,OI.quantity,OI.item_price from Customers C,Orders O,OrderItems OI where C.cust_id = O.cust_id 
and OI.order_num = O.order_num and prod_id = 'RGAN01';

-- 外联结
-- 下面这句是内联结，检索所有顾客及其订单
select c.cust_id,o.order_num from Customers c inner join Orders o on c.cust_id = o.cust_id;
-- 下面是外联结
select c.cust_id,o.order_num from CUSTOMERS c left outer join Orders o on c.cust_id = o.cust_id;
select c.cust_id,o.order_num from CUSTOMERS c left join Orders o on c.cust_id = o.cust_id; -- 没有 outer 也是可以的
select c.cust_id,o.order_num from Customers c right outer join Orders o on c.cust_id = o.cust_id;
select c.cust_id,o.order_num from CUSTOMERS c right join Orders o on c.cust_id = o.cust_id;

-- 全外联结
select c.cust_id,o.order_num from Orders o full join Customers c on o.cust_id = c.cust_id;

-- 使用带聚合函数的联结
select c.cust_id, count(o.order_num) num_ord from Customers c inner join Orders o on c.cust_id = o.cust_id group by c.cust_id;
select c.cust_id, count(o.order_num) num_ord from customers c left join orders o on c.cust_id = o.cust_id group by c.cust_id;