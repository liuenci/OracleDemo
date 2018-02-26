-- 过滤数据

-- 使用WHERE子句,同时使用ORDER BY和WHERE子句时，ORDER BY要在WHERE 子句后面
SELECT prod_name,prod_price FROM Products WHERE prod_price = 3.49;

-- WHERE子句操作符

-- 检查单个值
SELECT prod_name,prod_price FROM products WHERE prod_price <10;

-- 不匹配检查
SELECT vend_id,prod_name FROM Products WHERE vend_id <> 'DLL01';
SELECT vend_id,prod_name FROM Products WHERE vend_id != 'DLL01';

--范围性检查
SELECT prod_name,prod_price FROM Products WHERE prod_price BETWEEN 5 AND 10;

-- 空值检查
SELECT prod_name from products where prod_price is null;
select cust_name from customers where cust_email is null;



