-- 汇总数据

--AVG函数,求平均值,忽略值为null的行
select prod_price ,vend_id from products;
select avg(prod_price) as avg_price from products;
select avg(prod_price) as avg_price from products where vend_id = 'DLL01';
select avg(distinct prod_price) as avg_price from products where vend_id = 'DLL01';--因为多个物品中具有相同的较低价格

-- COUNT函数,忽略null值
select * from customers;
select count(*) as num_cust from customers;

-- MAX函数
select max(prod_price) as max_price from products;
select max(vend_id) from products; --对于非数值数据使用max数据，会返回最后一行

-- MIN函数
select min(prod_price) from products;
select min(vend_id) from products;

--sum函数，用来返回指定列值的和
select sum(quantity) as items_ordered from orderitems where order_num = 20005;
select sum(item_price*quantity) as total_price from orderitems where order_num = 20005;

--组合聚合函数
select count(*) as num_items,min(prod_price) as price_min,max(prod_price) as price_max,avg(prod_price) as price_avg from products;