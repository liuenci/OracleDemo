-- 使用视图
-- 创建视图
-- 利用视图简化复杂的联结
create view ProductCustomers AS 
SELECT cust_name, cust_contact,prod_id 
from Customers,Orders,OrderItems
where Customers.cust_id = Orders.cust_id
and OrderItems.order_num = orders.order_num;
-- 检索订购了产品 RGAN01 的顾客
select cust_name,cust_contact from ProductCustomers where prod_id = 'RGAN01';

-- 用视图重新格式化检索出的数据
select rtrim(vend_name) || '(' || rtrim(vend_country) || ')' as vend_title from Vendors order by vend_name;
create view VendorLocations as
select rtrim(vend_name) || '(' || rtrim(vend_country) || ')' as vend_title from Vendors order by vend_name;
select * from VendorLocations;

-- 用视图过滤不想要的数据
create view CustomersEMailList as
select cust_id,cust_name,cust_email
from customers
where cust_email is not null;

-- 使用视图与计算字段
create view OrderItemsExpanded as
select order_num,prod_id,quantity,item_price,quantity*item_price expanded_price from OrderItems;
select * from OrderItemsExpanded;