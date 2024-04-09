
mysql> INSERT INTO 7_employees
    -> VALUES (101,'Peter',32,'Newyork',200000);
Query OK, 1 row affected (0.12 sec)

mysql> INSERT INTO 7_employees VALUES (102,'Mark',32,'California',300000)
    -> ;
Query OK, 1 row affected (0.07 sec)

mysql> INSERT INTO 7_employees VALUES (103,'Donald',40,'Arizona',1000000);
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO 7_employees VALUES (104,'Obama',35,'Florida',500000), (105,'Linklon',32,'Georgia',25000), (106,'kane',45,'Alaska',45000),(107,'Adam',35,'Caligfornia',500000),(108,'Macculam',40,'Florida',35000),
    -> (109,'Brayan',32,'Alaska',400000),
    -> (110,'Stephen',40,'Arizon',600000),
    -> (111,'Alexander',45,'California',70000);
Query OK, 8 rows affected (0.07 sec)
Records: 8  Duplicates: 0  Warnings: 0




mysql> select * from 7_employees
    -> ;
+--------+-----------+---------+-------------+---------+
| Emp_id | Emp_name  | Emp_age | City        | Income  |
+--------+-----------+---------+-------------+---------+
|    101 | Peter     |      32 | Newyork     |  200000 |
|    102 | Mark      |      32 | California  |  300000 |
|    103 | Donald    |      40 | Arizona     | 1000000 |
|    104 | Obama     |      35 | Florida     |  500000 |
|    105 | Linklon   |      32 | Georgia     |   25000 |
|    106 | kane      |      45 | Alaska      |   45000 |
|    107 | Adam      |      35 | Caligfornia |  500000 |
|    108 | Macculam  |      40 | Florida     |   35000 |
|    109 | Brayan    |      32 | Alaska      |  400000 |
|    110 | Stephen   |      40 | Arizon      |  600000 |
|    111 | Alexander |      45 | California  |   70000 |
+--------+-----------+---------+-------------+---------+
11 rows in set (0.00 sec)



mysql> SELECT Emp_name, City, Income FROM 7_employees
    -> WHERE Emp_id IN (SELECT Emp_id FROM 7_employees);
+-----------+-------------+---------+
| Emp_name  | City        | Income  |
+-----------+-------------+---------+
| Peter     | Newyork     |  200000 |
| Mark      | California  |  300000 |
| Donald    | Arizona     | 1000000 |
| Obama     | Florida     |  500000 |
| Linklon   | Georgia     |   25000 |
| kane      | Alaska      |   45000 |
| Adam      | Caligfornia |  500000 |
| Macculam  | Florida     |   35000 |
| Brayan    | Alaska      |  400000 |
| Stephen   | Arizon      |  600000 |
| Alexander | California  |   70000 |
+-----------+-------------+---------+
11 rows in set (0.06 sec)




mysql> SELECT * FROM 7_employees WHERE Emp_id IN (SELECT Emp_id FROM 7_employees WHERE Income > 350000);
+--------+----------+---------+-------------+---------+
| Emp_id | Emp_name | Emp_age | City        | Income  |
+--------+----------+---------+-------------+---------+
|    103 | Donald   |      40 | Arizona     | 1000000 |
|    104 | Obama    |      35 | Florida     |  500000 |
|    107 | Adam     |      35 | Caligfornia |  500000 |
|    109 | Brayan   |      32 | Alaska      |  400000 |
|    110 | Stephen  |      40 | Arizon      |  600000 |
+--------+----------+---------+-------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT Emp_name,City,Income FROM 7_employees
    -> WHERE Income = (SELECT MAX(Income) FROM 7_employees);
+----------+---------+---------+
| Emp_name | City    | Income  |
+----------+---------+---------+
| Donald   | Arizona | 1000000 |
+----------+---------+---------+
1 row in set (0.02 sec)









