-- 高级sql特性

-- 约束
-- 主键
-- 创建表的时候添加主键
create table Vendors
(
  vend_id char(10) not null primary key,
  vend_name char(50) not null,
  vend_address char(50),
  vend_city char(50),
  vend_state char(5),
  vend_zip char(10),
  vend_country char(50) null
)
-- 创建表之后添加主键
alter table Vendors add constraint primary key(vend_id);

-- 外键
-- 创建表的时候添加外键
create table Orders
(
  order_num integer not null primary key,
  order_date date not null,
  cust_id char(10) not null references Customers(cust_id)
);
-- 创建表之后添加外键
alter table Orders
add constraint foreign key(cust_id) references Customers(cust_id);

-- 唯一约束
-- 略 嘻嘻

-- 检查约束 money 是什么类型的啊？进一步确认是盗版书了
-- 创建表的时候添加检查约束
create table OrderItems1
(
  order_num INTEGER NOT NULL,
  order_item INTEGER NOT NULL,
  prod_id char(10) NOT NULL,
  quantity INTEGER NOT NULL CHECK(quantity > 0),
  item_price money NOT NULL
)
-- 创建表之后添加检查约束
alter table check (gender like '[MF]');

-- 索引
create index prod_name_ind on products(prod_name);

-- 触发器 书上200页的代码有问题，进一步确定是盗版书了
create trigger customer_state
after insert or update on Customers
for each row
begin
update Customers
set cust_state = Upper(cust_state)
where Customers.cust_id = :old.cust_id;
end;