-- 检索单个列，如果没有规定显示顺序，顺序可能会乱
SELECT prod_name FROM PRODUCTS;

-- 检索多个列
SELECT prod_id, prod_name,prod_price,prod_desc FROM Products;

-- 检索所有列
SELECT * FROM Products;

-- 检索不同的值 DISTINCT关键字放在列名的前面,作用于DISTINCT之后的所有列
SELECT vend_id FROM Products;
SELECT DISTINCT vend_id FROM Products;
SELECT DISTINCT vend_id, prod_id FROM Products;

-- 限制返回行数,ORACLE基于ROWNUM(行计算器)来计算行
SELECT prod_name FROM Products WHERE ROWNUM <=5;