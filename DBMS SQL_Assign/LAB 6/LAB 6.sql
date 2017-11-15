LAB 6

6.1: Transaction Control Language Statements

1.INSERT INTO CUSTOMER VALUES(6000, 'John', '#115 Chicago', '#115 Chicago', 'M', 25, 4547878776, 1000);
   INSERT INTO CUSTOMER VALUES(6001,'Jack', '#116 France', '#116 France',' M', 25, 434524, 20000);
   INSERT INTO CUSTOMER VALUES(6002, 'James', '#114 New York', '#114 New York',' M', 45, 431525, 15000.50);

2.SAVEPOINT SP1;

3.INSERT INTO CUSTOMER VALUES(6003,' John', '#114 Chicago', '#114 Chicago',' M', 45, 439525, 19000.60);

4.ROLLBACK TO SP1;