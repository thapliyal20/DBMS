LAB 3

3.1)JOINS AND SUBQUERIES

1. Write a query which displays Staff Name, Department Code, Department Name, and
Salary for all staff who earns more than 20000.  

SQL> SELECT STAFF.STAFF_NAME , STAFF.DEPT_CODE , STAFF.STAFF_SAL , DEPT.DEPT_NAME  FROM 
      STAFF_MASTERS STAFF, DEPARTMENT_MASTERS DEPT WHERE STAFF.DEPT_CODE=DEPT.DEPT_CODE 
      AND STAFF.STAFF_SAL>20000;

2. Display Staff Code, Staff Name, Department Name, and his managerís number and
name. Label the columns Staff#, Staff, Mgr#, Manager.

SQL> SELECT STAFF.STAFF_CODE AS STAFF#, STAFF.STAFF_NAME AS STAFF,STAFF.MGR_CODE AS MGR#, 
          DEPT.DEPT_NAME FROM STAFF_MASTERS STAFF, DEPARTMENT_MASTERS DEPT 
          WHERE STAFF.DEPT_CODE=DEPT.DEPT_CODE;

3. Create a query that will display Student Code, Student Name, Department Name,
Subject1, Subject2, and Subject3 for all students who are getting 60 and above in
each subject from department 10 and 20.  

SQL> SELECT STUD.STUDENT_CODE, STUD.STUDENT_NAME, DEPT.DEPT_NAME, MARK.SUBJECT1, 
      MARK.SUBJECT2, MARK.SUBJECT3 FROM STUDENT_MASTERS STUD, DEPARTMENT_MASTERS DEPT,         
      STUDENT_MARKS MARK WHERE STUD.DEPT_CODE=DEPT.DEPT_CODE AND 
      STUD.DEPT_CODE IN(10,20) AND SUBJECT1>60 AND SUBJECT2>60 AND SUBJECT3>60 
      GROUP BY STUD.STUDENT_CODE,STUD.STUDENT_CODE, DEPT.DEPT_NAME, MARK.SUBJECT1, 
      MARK.SUBJECT2, MARK.SUBJECT3;

4. Create a query that will display Student Code, Student Name, Book Code, and Book
Name for all students whose expected book return date is today.  

SQL> SELECT STUD.STUDENT_CODE, STUD.STUDENT_NAME , BOOK.BOOK_CODE, B.BOOK_NAME 
            FROM STUDENT_MASTERS STUD, BOOK_TRANSACTIONS BOOK , BOOK_MASTERS B
            WHERE BOOK_EXPECTED_RETURN_DATE = SYSDATE; 

5. Create a query that will display Staff Code, Staff Name, Department Name,
Designation name, Book Code, Book Name, and Issue Date. For only those staff who
have taken any book in last 30 days. . If required, make changes to the table to
create such a scenario.  

SQL> SELECT STAFF.STAFF_CODE, STAFF.STAFF_NAME, STAFF.DESIGN_CODE, DEPT.DEPT_NAME, 
      BOOK.BOOK_CODE,BOOK.BOOK_NAME, B.BOOK_ISSUE_DATE FROM 
      STAFF_MASTERS STAFF, DEPARTMENT_MASTERS DEPT, BOOK_MASTERS BOOK , 
      BOOK_TRANSACTIONS B WHERE STAFF.DEPT_CODE = DEPT.DEPT_CODE 
      AND BOOK.BOOK_CODE=B.BOOK_CODE
      AND BOOK_ISSUE_DATE > SYSDATE-30 GROUP BY STAFF.STAFF_CODE,STAFF.STAFF_NAME,             
      STAFF.DESIGN_CODE, DEPT.DEPT_NAME, BOOK.BOOK_CODE,BOOK.BOOK_NAME,  
      B.BOOK_ISSUE_DATE;

      STAFF_CODE     STAFF_NAME               DESIGN_CODE            DEPT_NAME                                   BOOK_CODE              BOOK_NAME                            BOOK_ISSUE_DATE           
      ---------------------- -------------------------------------------------- ---------------------- -------------------------------------------------- ---------------------- -------------------------------------------------- ------------------------- 
     100010                 Ram                                                103                Electronics                                       10000007              Intoduction To Algorithams                          01-MAY-17                 
     100009                 Rahul                                              102                Electricals                                        10000007               Intoduction To Algorithams                         01-MAY-17                 
     100001                 Arvind                                             102                 Electronics                                        10000007               Intoduction To Algorithams                         01-MAY-17                 
     100005                 John                                               106                 Computer Science                            10000007               Intoduction To Algorithams                         01-MAY-17                 
     100008                 Raviraj                                            102                 Mechanics                                        10000007             Intoduction To Algorithams                           01-MAY-17                 
     100007                 Smith                                              103                 Electricals                                        10000007               Intoduction To Algorithams                         01-MAY-17                 
     100006                 Allen                                               103                 Electronics                                        10000007               Intoduction To Algorithams                         01-MAY-17                 

      7 rows selected

6. Display the unique list of Book code and Book name from the Book transaction.  

SQL> SELECT DISTINCT BOOK.BOOK_CODE,B.BOOK_NAME FROM BOOK_TRANSACTIONS BOOK,
          BOOK_MASTERS B WHERE BOOK.BOOK_CODE=B.BOOK_CODE;

  7. 

  8.

  9.

10. 

11. 

12.

13. List the Staff Code, Staff Name who are not Manager.

SQL> SELECT STAFF_CODE , STAFF_NAME FROM STAFF_MASTERS WHERE MGR_CODE IS NOT NULL;

14. 

15.

16. Display top ten students for a specified department. Details are:
17. Student Code, Student Name, Department Name, Subject1, Subject2,
18. Subject3, Total.

   SQL>SELECT STUD.STUDENT_CODE, STUD.STUDENT_NAME , DEPT.DEPT_NAME , MARK.SUBJECT1,
            MARK.SUBJECT2, MARK.SUBJECT3, MARK.TOTAL
            FROM STUDENT_MASTERS STUD, DEPARTMENT_MASTERS DEPT , STUDENT_MARKS MARK
            WHERE STUD.DEPT_CODE= DEPT.DEPT_CODE AND ROWNUM<11 
            GROUP BY STUD.STUDENT_CODE,STUD.STUDENT_NAME, DEPT.DEPT_NAME,MARK.SUBJECT1,
            MARK.SUBJECT2, MARK.SUBJECT3, MARK.TOTAL;

19. 
  

20. List the details of the staff, experience (in years) whose designations are either
      PROFESSOR or LECTURER.

      SQL> ALTER TABLE STAFF_MASTERS ADD STAFF_EXP NUMBER (6,2);
      SQL> UPDATE STAFF_MASTERS SET STAFF_EXP=FLOOR((SYSDATE-HIREDATE)/365);
      SQL> SELECT STAFF.* , DES.DESIGN_NAME 
	FROM STAFF_MASTERS STAFF, DESIGNATION_MASTERS DES 
	WHERE STAFF.DESIGN_CODE= DES.DESIGN_CODE 
	AND DESIGN_NAME IN ('Professor') OR DESIGN_NAME IN ('lecturer'); 


21. Create a query that will display the Staff Name, Department Name, and all the staff
      who work in the same department as a given staff. Give the column as appropriate
      label.

      SQL>SELECT STAFF.STAFF_NAME AS STAFF, DEPT.DEPT_NAME FROM STAFF_MASTERS STAFF, 
               DEPARTMENT_MASTERS DEPT 
               WHERE STAFF.DEPT_CODE = DEPT.DEPT_CODE;

22. List the Student Code, Student Name for that student who got highest marks in all
      three subjects in Computer Science department for a particular year according to the
      table data
      
      SQL>SELECT STUD.STUDENT_CODE,STUD.STUDENT_NAME,  DEPT.DEPT_NAME,MARK.SUBJECT1, 
               MARK.SUBJECT2, MARK.SUBJECT3, MARK.STUDENT_YEAR 
               FROM STUDENT_MASTERS STUD, STUDENT_MARKS MARK, DEPARTMENT_MASTERS DEPT 
               WHERE STUD.STUDENT_CODE=MARK.STUDENT_CODE 
               AND DEPT_NAME IN('Computer Science') AND STUDENT_YEAR IN (2011) AND ROWNUM <2;


26. Display the details of books that have not been returned and expected return date
      was last Monday. Book name should be displayed in proper case.. Hint: You can
      change /add records so that the expected return date suits this problem statement

      SQL>SELECT BOOK.*, B.BOOK_EXPECTED_RETURN_DATE, B.BOOK_ACTUAL_RETURN_DATE 
               FROM BOOK_MASTERS BOOK, BOOK_TRANSACTIONS B 
               WHERE BOOK.BOOK_CODE=B.BOOK_CODE 
               AND BOOK_EXPECTED_RETURN_DATE = 

27.Write a query to display number of people in each Department. Output should display
     Department Code, Department Name and Number of People.

     SQL> SELECT COUNT(*) AS STAFF, DEPT.DEPT_CODE, DEPT.DEPT_NAME FROM STAFF_MASTERS STAFF, 
               DEPARTMENT_MASTERS DEPT WHERE STAFF.DEPT_CODE=DEPT.DEPT_CODE 
               GROUP BY DEPT.DEPT_CODE, DEPT.DEPT_NAME;
   