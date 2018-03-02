-- 管理事务处理
delete from custnew;
-- 回退
rollback;

-- 使用commit 哇盗版书的吧，书上原封不动的代码到这就是个错的。
set TRANSACTION
delete from vendors where vend_id = 'JTS01';
commit;

-- 添加占位符
savepoint delete1;
delete from vendors where vend_id = 'JTS01';
-- 回到还原点
rollback to delete1;