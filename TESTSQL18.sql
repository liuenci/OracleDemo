-- 使用存储过程
create procedure MailingListCount(
  ListCount OUT INTEGER
)
IS
v_rows integer;
begin
select count(*) into v_rows
from Customers
where not cust_email is null;
ListCount := v_rows;
end;
-- 调用存储过程
var ReturnValue NUMBER
exec MAILINGLISTCOUNT(:ReturnValue);
select ReturnValue; -- 假书吧，没有 from 怎么执行啊