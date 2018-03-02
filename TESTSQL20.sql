-- 使用游标 sql必知必会中少了begin那部分会报错
declare cursor CustCursor
is
select * from Customers where cust_email is null;
begin
null;
end;

declare type CustCursor is ref cursor
return Customers%rowtype;
declare CustRecord Customers%ROWTYPE
BEGIN
  open CustCursor;
  loop
  fetch CustCursor into CustRecord;
  exit when CustCursor%NOTFOUND
  close CustCursor;
end;