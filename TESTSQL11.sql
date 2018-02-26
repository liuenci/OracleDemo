-- 联结表
select vend_name,prod_name,prod_price from Vendors,Products where Vendors.vend_id = Products.vend_id order by Products.PROD_PRICE;
-- 笛卡儿积
select vend_name,prod_name,prod_price from Vendors,Products;
-- 内联结
select vend_name,prod_name,prod_price from Vendors inner join Products on Vendors.VEND_ID = Products.vend_id; 
-- 联结多个表,联结的表越多，性能下降的越厉害
select prod_name,vend_name,prod_price,quantity from ORDERITEMS,PRODUCTS,VENDORS where PRODUCTS.VEND_ID = VENDORS.VEND_ID and 
ORderItems.prod_id = PRODUCTS.PROD_ID and order_num = 20007;