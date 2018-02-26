-- 排序检索数据

-- 排序数据
-- ORDER BY 字句必须是SELECT 语句中最后一条字句
SELECT prod_name FROM Products; --没有特定的排序
SELECT prod_name FROM Products ORDER BY prod_name; --排序
SELECT prod_name FROM Products ORDER BY prod_id; --可以用非检索的列排序数据

-- 按多个列排序,仅当多个行具有相同的prod_price值时才对产品按prod_name进行排序
SELECT prod_id,prod_price,prod_name FROM Products
ORDER BY prod_price,prod_name;

-- 按列位置进行排序,2代表prod_price,3代表prod_name,类似于上面的语句
SELECT prod_id, prod_price,prod_name FROM Products ORDER BY 2,3;

--制定排序方向 DESC降序，ASC升序，但是无意义，默认升序
SELECT prod_id,prod_price,prod_name FROM Products ORDER BY prod_price DESC; --降序排列
SELECT prod_id,prod_price,prod_name FROM Products ORDER BY prod_price DESC, prod_name; --多个列降序排列，但是prod_name仍然是升序排列

