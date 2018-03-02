-- 插入数据
-- 插入完整的行
insert into Customers values('1000000006','Toy Load','123 Any Street','New York','NY','1111','USA',null,null);
insert into Customers(cust_id,cust_name,cust_address,cust_city,cust_state,cust_zip,cust_country) values('1000000006','Toy Load','123 Any Street','New York','NY','1111','USA');

-- 插入检索出的数据
create table CustNew as select * from CUSTOMERS where 1=0;
insert into Customers(cust_id,cust_name,cust_address,cust_city,cust_state,cust_zip,cust_country)
select cust_id,cust_name,cust_address,cust_city,cust_state,cust_zip,cust_country from CustNew;

-- 从一个表复制到另外一个表
create table CustCopy as select * from CUSTOMERS where 1=1;