-- 使用函数处理数据

-- 文本处理函数
select vend_name,upper(vend_name) as vend_name_upcase from vendors order by vend_name; -- 将文本转换为大写
select vend_name,length(vend_name) as vend_name_length from vendors order by vend_name; --输出字符串的长度
select vend_name,lower(vend_name) as vend_name_lowercase from vendors order by vend_name; -- 将文本转换为小写

--返回字符串的soundex值，soundex是一个将任何文版串转换为描述其语音表示的字符模式的算法
select vend_name,soundex(vend_name) as vend_name_sound from vendors order by vend_name; 
-- customers中有一个顾客kids place,其联系名是Michelle Green,但是这是一个错误的输入,这个联系名应该是Michael Green,使用soundex(),进行发音相似的检索
select cust_name,cust_contact from customers where soundex(cust_contact) = soundex('Michael Green');

-- 日期和时间处理函数
select order_num from orders where to_number(to_char(order_date,'yyyy')) = 2012;
select order_num from orders where to_number(to_char(order_date,'MM')) = 2;
select order_num from orders where to_number(to_char(order_date,'dd')) = 12;
-- select order_num from orders where order_date between to_date('01-01-2012') and to_date('12-31-2012'); oracle不可用



