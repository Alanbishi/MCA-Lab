mysql> CREATE TABLE students(
    -> id int NOT NULL AUTO_INCREMENT,
    -> Name varchar(45) NOT NULL,
    -> Class int NOT NULL,
    -> email_id varchar(65) NOT NULL,
    -> PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected (0.65 sec)



INSERT INTO students(Name,Class,email_id) VALUES('Strange',6,'strange@gmail.com'),('Bruce',7,'bruce@gmail.com'),('Steve',8,'steve@gmail.com'),('Aleksander',7,'aleks@gmail.com')



mysql> CREATE TABLE student_log (
    -> User varchar(45) NOT NULL, Descriptions VARCHAR(65) NOT NULL
    -> );
Query OK, 0 rows affected (1.60 sec)


mysql>  select*from students;+----+------------+-------+-------------------+
| id | Name       | Class | email_id          |
+----+------------+-------+-------------------+
|  1 | Strange    |     6 | strange@gmail.com |
|  2 | Bruce      |     7 | bruce@gmail.com   |
|  3 | Steve      |     8 | steve@gmail.com   |
|  4 | Aleksander |     7 | aleks@gmail.com   |
+----+------------+-------+-------------------+
4 rows in set (0.00 sec)



mysql> DELIMITER //
mysql> CREATE TRIGGER after_update_stdnts
    -> AFTER UPDATE
    -> ON students
    -> FOR EACH ROW
    -> BEGIN
    -> INSERT INTO student_log VALUES (user(),
    -> CONCAT('Update Student Record',OLD.name,'Previous Class:',
    -> OLD.class, 'Present Class',NEW.class));
    -> END //
Query OK, 0 rows affected (0.20 sec)


mysql> DELIMITER ;
mysql>  select * from student_log;
Empty set (0.00 sec)

mysql> update students set class=class+1;
Query OK, 4 rows affected (0.23 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql>  select * from student_log;
+----------------+---------------------------------------------------------------+
| User           | Descriptions                                                  |
+----------------+---------------------------------------------------------------+
| root@localhost | Update Student RecordStrangePrevious Class:6Present Class7    |
| root@localhost | Update Student RecordBrucePrevious Class:7Present Class8      |
| root@localhost | Update Student RecordStevePrevious Class:8Present Class9      |
| root@localhost | Update Student RecordAleksanderPrevious Class:7Present Class8 |
+----------------+---------------------------------------------------------------+
4 rows in set (0.00 sec)




mysql>  select*from students;
+----+------------+-------+-------------------+
| id | Name       | Class | email_id          |
+----+------------+-------+-------------------+
|  1 | Strange    |     7 | strange@gmail.com |
|  2 | Bruce      |     8 | bruce@gmail.com   |
|  3 | Steve      |     9 | steve@gmail.com   |
|  4 | Aleksander |     8 | aleks@gmail.com   |
+----+------------+-------+-------------------+
4 rows in set (0.00 sec)








































