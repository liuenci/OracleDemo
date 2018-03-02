-- 创建和操纵表
create table productsnew
(
prod_id char(10) not null,
vend_id char(10) not null,
prod_name char(254) not null,
prod_price decimal(8,2) not null,
prod_desc varchar(1000) null
)

-- 使用 null 值 oracle 中datetime 这种数据类型不存在，sql server 有 datetime
create table ordersnew
(
  order_num integer not null,
  order_date date not null,
  cust_id char(10) not null
);

-- 混合 null 和 not null 的表
create table vendorsnew
(
  vend_id char(10) not null,
  vend_name char(50) not null,
  vend_address char(50) ,
  vend_city char(50) ,
  vend_state char(5) ,
  vend_zip char(10) ,
  vend_country char(50)
)

-- 指定默认值 default 要放在not null 之前
create table orderitemsnew
(
  order_num integer not null,
  order_item integer not null,
  prod_id char(10) not null,
  quantity integer default 1 not null,
  item_price decimal(8,2) not null
)

-- 更新表
-- 添加列
alter table vendorsnew add vend_phone char(20);
-- 删除列
alter table vendorsnew drop column vend_phone;

-- 删除表
drop table custcopy;

-- 重命名表
rename  custnew to custnews;
rename  custnews to custnew;