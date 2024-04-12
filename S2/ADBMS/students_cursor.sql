mysql> delimiter $$
mysql> create procedure list_name(inout name_list varchar(4000))
    -> begin
    -> declare is_done integer default 0;
    -> declare s_name varchar(100)default "";
    -> declare stud_cursor cursor for select Name from student;
    -> declare continue handler for not found set is_done=1;
    -> open stud_cursor;
    -> get_list: LOOP
    -> fetch stud_cursor into s_name;
    -> if is_done = 1 then
    -> leave get_list;
    -> end if;
    -> set name_list = concat(s_name,";",name_list);
    -> end loop get_list;
    -> close stud_cursor;
    -> end $$

Query OK, 0 rows affected, 3 warnings (0.05 sec)




mysql> set@names_list="";
    -> $$
Query OK, 0 rows affected (0.00 sec)

mysql> call lists_name(@name_list);
    -> $$
Query OK, 0 rows affected (0.00 sec)

mysql> select@names_list;
    -> $$
+-------------+
| @names_list |
+-------------+
|             |
+-------------+
1 row in set (0.00 sec)

mysql> 


