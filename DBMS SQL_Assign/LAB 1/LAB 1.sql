LAB 1

1.1 Data Query Language

1. Retrieve the details (Name, Salary and dept code) of the staff who are working in
department code 20, 30 and 40.	
          
SQL> SELECT STAFF_NAME, STAFF_SAL, DEPT_CODE FROM STAFF_MASTERS 
          	 WHERE DEPT_CODE IN(20,30,40);
    
2. Display the code and total marks for every student. Total Marks will be calculated as
subject1+subject2+subject3 .(Refer Student_marks table )
	
SQL> SELECT STUDENT_CODE,(SUBJECT1+SUBJECT2+SUBJECT3) AS TOTAL FROM Student_marks;

3. List the Name and Designation code of the staff who have joined before Jan 2003
and whose salary range is between 12000 and 25000. Display the columns with user
defined Column headers. Hint: Use As clause along with other operators
	
SQL> SELECT STAFF_NAME, DESIGN_CODE FROM STAFF_MASTERS WHERE HIREDATE<'01-JAN-03' 
          AND (STAFF_SAL >12000 AND STAFF_SAL<25000);

4. List the code, name, and department number of the staff who have experience of 18
or more years and sort them based on their experience.

SQL> ALTER TABLE STAFF_MASTERS ADD STAFF_EXP NUMBER(4,2); 
 //First we add column STAFF_EXP IN STAFF_MASTERS TABLE 
SQL> UPDATE STAFF_MASTERS SET STAFF_EXP= SYSDATE-HIREDATE/365;
/* Calculating STAFF_EXP IN YEARS AS SYSDATE MINUS HIREDATE DIVIDED BY 365 */
SQL> SELECT STAFF_CODE, STAFF_NAME, DEPT_CODE FROM STAFF_MASTERS WHERE STAFF_EXP>=18;
/* Displaying details of staff and checking the given condition i.e STAFF_EXP>=18 */     

5. List the name, designation code, and salary for 10 years of the staff who are working
in departments 10 and 30.

SQL> SELECT STAFF_NAME, DESIGN_CODE, STAFF_SAL*12*10 AS SALARY  FROM STAFF_MASTERS             
          WHERE DEPT_CODE=10 AND DEPT_CODE=30;
//STAFF_SAL*12*10 gives STAFF_SAL for 10 Years 
	
6. Display name concatenated with dept code separated by comma and space. Name
the column as �Student Info�.	

SQL> SELECT STUDENT_NAME||' , '||STUDENT_CODE AS STUDENT_INFO FROM STUDENT_MASTERS;
	
7. Display the staff details who do not have manager. Hint: Use is null	

SQL> SELECT * FROM STAFF_MASTERS WHERE MGR_CODE IS NULL;

8. Write a query which will display name, department code and date of birth of all
students who were born between January 1, 1981 and March 31, 1983. Sort it based
on date of birth (ascending).Hint: Use between operator	

SQL> SELECT STUDENT_NAME, DEPT_CODE, STUDENT_DOB FROM STUDENT_MASTERS 
          WHERE STUDENT_DOB BETWEEN '01-JAN-81' AND '31-MAR-83';

9. Display the Book details that were published during the period of 2001 to 2004. Also
display book details with Book name having the character �&� anywhere.	

SQL> SELECT * from book_masters where BOOK_PUB_YEAR>2001 OR BOOK_PUB_YEAR<2004 
                    AND BOOK_NAME LIKE '%&%';

10. Display the Book details where the records have the word �COMP� anywhere in the
Book name.	

SQL> SELECT * from book_masters where BOOK_NAME LIKE '%COMP%';

11. List the details of the staff, whose names start with �A� and end with �S� or whose
names contains N as the second or third character, and ending with either �N� or �S�.

SQL> SELECT * FROM STAFF_MASTERS WHERE STAFF_NAME LIKE 'A%S' 
          OR STAFF_NAME LIKE '_N%S' OR STAFF_NAME LIKE '__N%S'; 
	   
12. List the names of the staff having �_� character in their name.	

SQL> SELECT STAFF_NAME FROM STAFF_MASTERS WHERE STAFF_NAME LIKE  '_'; 
          
    	




























        
	4. 
	
	5.