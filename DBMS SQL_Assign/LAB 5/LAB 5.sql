Lab 5

5.1 Data Manipulation Language

	
1.Create table employeee as select * from emp where 1=3;
	desc employeee;
	select * from employee;
	
EMPNO              ENAME      DEPTNAME   MGR                   HIREDATE               SAL             COMM         DEPTNO                 
---------------------- ---------- --------- ---------------------- ------------------------- ---------------------- ---------------------- ---------------------- 
1000                   Allen           Clerk           1001                   12-JAN-01                 3000                   2                      10                     
1001                   George       analyst                                   08-SEP-92                 5000                   0                      10                     
1002                   Becker       Manager       1000                   04-NOV-92                 2800                   4                      20                     
1003                   Bill                Clerk         1002                   04-NOV-92                 3000                   0                      20                     

4 rows selected
	

2.INSERT INTO employeee(EMPNO,ENAME,SAL,DEPTNO)  SELECT EMPNO,ENAME,SAL,DEPTNO FROM Emp;

3.UPDATE employeee SET empno = 7799 WHERE empno=7698;

4.Delete from emp  where job='SALESMAN';

5.
	
6.INSERT INTO employee VALUES (1000,'Allen', 'Clerk',1001,'12-jan-01', 3000, 2,10);
   INSERT INTO employee VALUES (1001,'George', 'analyst', null, '08-Sep-92',5000,0, 10);	
   INSERT INTO employee VALUES (1002, 'Becker', 'Manager', 1000, '4- Nov- 92', 2800,4, 20);
   INSERT INTO employee VALUES (1003, 'Bill', 'Clerk', 1002, '4 -Nov -92',3000, 0, 20);

7.Create table Project(PROJID VARCHAR2(10),PROJ_NAME VARCHAR2(25),START_DATE DATE,END_DATE DATE);
   Insert into Project values(101,'testing','19-apr-17','16-jul-17');
   Insert into Project values(102,'BI','29-apr-17','19-jul-17');
   alter table Project ADD CONSTRAINT Pk_id PRIMARY KEY(PROJID);
   create table Employee_Project(empno number(5) PRIMARY KEY,eproject REFERENCES Project(PROJID));

	