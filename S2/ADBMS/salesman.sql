mysql> select * from Customer;
+---------+----------------+------------+-------+-------------+
| Cust_id | Cust_name      | City       | Grade | Salesman_id |
+---------+----------------+------------+-------+-------------+
|    3001 | Brad Guzan     | London     |   100 |        5005 |
|    3002 | Nick Rimando   | New York   |   100 |        5001 |
|    3003 | Jozy Altidor   | Moscow     |   200 |        5007 |
|    3004 | Fabian Johnson | Paris      |   300 |        5006 |
|    3005 | Graham Zusi    | California |   200 |        5002 |
|    3007 | Brad Davis     | New York   |   200 |        5001 |
|    3008 | Julian Green   | London     |   300 |        5002 |
|    3009 | Geof Cameron   | Berlin     |   100 |        5003 |
+---------+----------------+------------+-------+-------------+
8 rows in set (0.00 sec)

mysql> select * from Salesman;
+-------------+------------+----------+-----------+
| Salesman_id | Name       | City     | Commision |
+-------------+------------+----------+-----------+
|        5001 | James Hoog | New York |      0.15 |
|        5002 | Nail Knite | Paris    |      0.13 |
|        5003 | Lauson Hen | San Jose |      0.12 |
|        5005 | Pit Alex   | London   |      0.11 |
|        5006 | McLyon     | Paris    |      0.14 |
|        5007 | Paul Adam  | Rome     |      0.13 |
+-------------+------------+----------+-----------+
6 rows in set (0.02 sec)




mysql> create table Orders
    -> (Order_no int primary key,Purch_amt float(10,2),Order_date date,Customer_id int,Salesman_id int);
Query OK, 0 rows affected (0.54 sec)

mysql> DESC Orders;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Order_no    | int(11)     | NO   | PRI | NULL    |       |
| Purch_amt   | float(10,2) | YES  |     | NULL    |       |
| Order_date  | date        | YES  |     | NULL    |       |
| Customer_id | int(11)     | YES  |     | NULL    |       |
| Salesman_id | int(11)     | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
5 rows in set (0.06 sec)





mysql> ALTER TABLE Orders ADD FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id);
Query OK, 0 rows affected (0.81 sec)
Records: 0  Duplicates: 0  Warnings: 0




mysql> insert into Orders values(70009,270.65,'2012-09-10',3001,5005);
Query OK, 1 row affected (0.04 sec)

mysql> insert into Orders values(70002,65.26,'2012-10-05',3002,5001);
Query OK, 1 row affected (0.04 sec)

mysql> insert into Orders values(70004,110.5,'2012-08-17',3009,5003);
Query OK, 1 row affected (0.04 sec)

mysql> insert into Orders values(70007,948.5,'2012-09-10',3005,5002);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Orders values(70005,2400.6,'2012-07-27',3007,5001);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Orders values(70008,5760,'2012-09-10',3002,5001);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Orders values(70010,1983.43,'2012-10-10',3004,5006);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Orders values(70003,2480.4,'2012-10-10',3009,5003);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Orders values(70012,250.45,'2012-06-27',3008,5002);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Orders values(70011,75.29,'2012-08-17',3003,5007);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Orders values(70013,3045.6,'2012-04-25',3002,5001);
Query OK, 1 row affected (0.04 sec)



mysql> select * from Orders;
+----------+-----------+------------+-------------+-------------+
| Order_no | Purch_amt | Order_date | Customer_id | Salesman_id |
+----------+-----------+------------+-------------+-------------+
|    70001 |    150.50 | 2012-10-05 |        3005 |        5002 |
|    70002 |     65.26 | 2012-10-05 |        3002 |        5001 |
|    70003 |   2480.40 | 2012-10-10 |        3009 |        5003 |
|    70004 |    110.50 | 2012-08-17 |        3009 |        5003 |
|    70005 |   2400.60 | 2012-07-27 |        3007 |        5001 |
|    70007 |    948.50 | 2012-09-10 |        3005 |        5002 |
|    70008 |   5760.00 | 2012-09-10 |        3002 |        5001 |
|    70009 |    270.65 | 2012-09-10 |        3001 |        5005 |
|    70010 |   1983.43 | 2012-10-10 |        3004 |        5006 |
|    70011 |     75.29 | 2012-08-17 |        3003 |        5007 |
|    70012 |    250.45 | 2012-06-27 |        3008 |        5002 |
|    70013 |   3045.60 | 2012-04-25 |        3002 |        5001 |
+----------+-----------+------------+-------------+-------------+
12 rows in set (0.00 sec)



mysql> CREATE VIEW newyorksalesman AS SELECT * FROM Salesman
    -> WHERE City = 'New York';
Query OK, 0 rows affected (0.11 sec)

mysql> SELECT * FROM newyorksalesman;
+-------------+------------+----------+-----------+
| Salesman_id | Name       | City     | Commision |
+-------------+------------+----------+-----------+
|        5001 | James Hoog | New York |      0.15 |
+-------------+------------+----------+-----------+
1 row in set (0.04 sec)



mysql> CREATE VIEW gradecount (grade, number)AS SELECT grade, COUNT(*) 
    -> FROM Customer GROUP BY Grade;
Query OK, 0 rows affected (0.44 sec)

mysql> SELECT * FROM gradecount;
+-------+--------+
| grade | number |
+-------+--------+
|   100 |      3 |
|   200 |      3 |
|   300 |      2 |
+-------+--------+
3 rows in set (0.12 sec)



mysql> CREATE VIEW totalforday AS SELECT Order_date,COUNT(DISTINCT Customer_id),AVG(Purch_amt), SUM(Purch_amt)FROM Orders GROUP BY Order_date;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM totalforday;
+------------+--------+----------------+----------------+
| Order_date | COUNT  |       AVG      |      SUM       |
+------------+--------+----------------+----------------+
| 2012-04-25 |      1 |    3045.600098 |        3045.60 |
| 2012-06-27 |      1 |     250.449997 |         250.45 |
| 2012-07-27 |      1 |    2400.600098 |        2400.60 |
| 2012-08-17 |      2 |      92.895000 |         185.79 |
| 2012-09-10 |      3 |    2326.383331 |        6979.15 |
| 2012-10-05 |      2 |     107.880001 |         215.76 |
| 2012-10-10 |      2 |    2231.914978 |        4463.83 |
+------------+--------+----------------+----------------+
7 rows in set (0.04 sec)

CREATE VIEW sorder AS SELECT Salesman_id, Order_no, Customer_id FROM Orders WHERE Order_date IN ('2012-08-17','2012-10-10');




SELECT * FROM sorder;
+-------------+----------+-------------+
| Salesman_id | Order_no | Customer_id |
+-------------+----------+-------------+
|        5003 |    70003 |        3009 |
|        5003 |    70004 |        3009 |
|        5006 |    70010 |        3004 |
|        5007 |    70011 |        3003 |
+-------------+----------+-------------+
4 rows in set (0.01 sec)

mysql> 









