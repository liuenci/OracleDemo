-- 更新和删除数据
update Customers set cust_email = 'kim@thetoystore.com' where cust_id = '1000000005'; -- 如果不加 where 条件会将所有的列都更新

-- 更新多个列
update Customers set cust_email = 'sam@toyland.com',cust_contact = 'Sam Roberts' where cust_id = '1000000006';

-- 删除某个列的值
update Customers set cust_email = null where cust_id = '1000000005';

-- 删除数据
delete from Customers where cust_id = '1000000006'; -- 如果不加 where 条件会删除所有行

-- 更快的删除所有行
truncate table custcopy;