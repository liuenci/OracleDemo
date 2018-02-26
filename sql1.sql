---------------------------------------------
-- Sams Teach Yourself SQL in 10 Minutes
-- http://forta.com/books/0672336073/
-- Example table creation scripts for Oracle.
---------------------------------------------


-------------------------
-- Create Customers table --创建用户表
-------------------------
CREATE TABLE Customers
(
  cust_id      char(10)  NOT NULL , -- 用户编号
  cust_name    char(50)  NOT NULL , -- 用户姓名
  cust_address char(50)  NULL ,-- 用户地址
  cust_city    char(50)  NULL ,-- 用户城市
  cust_state   char(5)   NULL ,-- 用户地位
  cust_zip     char(10)  NULL ,
  cust_country char(50)  NULL ,
  cust_contact char(50)  NULL ,
  cust_email   char(255) NULL 
);

--------------------------
-- Create OrderItems table -- 创建订单详情表
--------------------------
CREATE TABLE OrderItems
(
  order_num  int          NOT NULL , --订单编号
  order_item int          NOT NULL , --
  prod_id    char(10)     NOT NULL , -- 产品编号
  quantity   int          NOT NULL , -- 产品数量
  item_price decimal(8,2) NOT NULL  -- 总价格
);

----------------------
-- Create Orders table -- 创建订单表
----------------------
CREATE TABLE Orders
(
  order_num  int      NOT NULL , --订单编号
  order_date date     NOT NULL , --订单日期
  cust_id    char(10) NOT NULL  --用户编号
);

------------------------
-- Create Products table --创建产品表
------------------------
CREATE TABLE Products
(
  prod_id    char(10)      NOT NULL , --产品编号
  vend_id    char(10)      NOT NULL , -- 
  prod_name  char(255)     NOT NULL , --产品名称
  prod_price decimal(8,2)  NOT NULL , --产品价格
  prod_desc  varchar(1000) NULL  --产品描述 
);

-----------------------
-- Create Vendors table
-----------------------
CREATE TABLE Vendors
(
  vend_id      char(10) NOT NULL ,
  vend_name    char(50) NOT NULL ,
  vend_address char(50) NULL ,
  vend_city    char(50) NULL ,
  vend_state   char(5)  NULL ,
  vend_zip     char(10) NULL ,
  vend_country char(50) NULL 
);

----------------------
-- Define primary keys
----------------------
ALTER TABLE Customers ADD CONSTRAINT PK_Customers PRIMARY KEY (cust_id);
ALTER TABLE OrderItems ADD CONSTRAINT PK_OrderItems PRIMARY KEY (order_num, order_item);
ALTER TABLE Orders ADD CONSTRAINT PK_Orders PRIMARY KEY (order_num);
ALTER TABLE Products ADD CONSTRAINT PK_Products PRIMARY KEY (prod_id);
ALTER TABLE Vendors ADD CONSTRAINT PK_Vendors PRIMARY KEY (vend_id);

----------------------
-- Define foreign keys
----------------------
ALTER TABLE OrderItems
ADD CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (order_num) REFERENCES Orders (order_num);
ALTER TABLE OrderItems
ADD CONSTRAINT FK_OrderItems_Products FOREIGN KEY (prod_id) REFERENCES Products (prod_id);
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (cust_id) REFERENCES Customers (cust_id);
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Vendors FOREIGN KEY (vend_id) REFERENCES Vendors (vend_id);
