-- 组合查询
-- 使用 union
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI');
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All';

select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI')
union
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All';
-- 同等结果的 where 查询
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI') or cust_name = 'Fun4All';
-- 返回所有匹配的行,DBMS 会将重复的行也返回
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI')
union all
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All';

-- 对组合查询结构进行排序，只能使用一条 order by 子句
select cust_name,cust_contact,cust_email from CUSTOMERS where cust_state in ('IL','IN','MI')
union
select cust_name,cust_contact,cust_email from customers where cust_name = 'Fun4All'
order by cust_name,cust_contact;
