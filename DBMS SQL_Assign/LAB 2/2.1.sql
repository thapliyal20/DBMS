LAB 2. Single Row And Group Functions

2.1: Single Row Functions

1.  Create a query which will display Staff Name, Salary of each staff. Format the salary
     to be 15 character long and left padded with ‘$’.
      
     SQL> SELECT STAFF_NAME, LPAD(STAFF_SAL,15,'$') AS STAFF_SAL FROM STAFF_MASTERS;

2.  Display name and date of birth of students where date of birth must be displayed in
     the format similar to “January, 12 1981” for those who were born on Saturday or 
     Sunday.

     SQL>SELECT staff_masters.dept_code,dept_name,
             COUNT(staff_code)+COUNT(student_code) "Number of People"
             FROM staff_masters,department_masters,student_masters
             WHERE staff_masters.dept_code=department_masters.dept_code
             AND student_masters.dept_code=staff_masters.dept_code
            GROUP BY staff_masters.dept_code,dept_name


3.   Display each Staff name and number of months they worked for the organization.
      Label the column as ‘Months Worked’. Order your result by number of months
      employed. Also Round the number of months to closest whole number.

      SQL>SELECT staff_name,(ROUND(MONTHS_BETWEEN(SYSDATE,hiredate))) "MONTHS WORKED"
               FROM staff_masters
               ORDER BY (ROUND(MONTHS_BETWEEN(SYSDATE,hiredate)));

4. Display the name and salary of the staff. Salary should be represented as X. Each X
represents a 1000 in salary. Hint: Divide salary by 1000, use rpad to substitute an ‘X’
for every 1000.

    SQL>SELECT staff_name,staff_sal,LPAD(' ',((staff_sal)/1000),'x') "REPRESENTATION"
             FROM staff_masters;

5. List the details of the staff who have joined in first half of December month
    (irrespective of the year).
     
    SQL>SELECT staff_name,EXTRACT(DAY FROM hiredate) "DATE", EXTRACT(MONTH FROM hiredate) "MONTH"
              FROM staff_masters
              WHERE EXTRACT(DAY FROM hiredate)<=15 
              AND EXTRACT(MONTH FROM hiredate)=12;

6.  Write a query that displays Staff Name, Salary, and Grade of all staff. Grade depends
     on the following table.   

     PL\SQL>SELECT staff_name,staff_sal,
	CASE
	WHEN staff_sal>=50000
	THEN 'A'
	WHEN staff_sal>=50000 
	AND staff_sal<50000
	THEN 'B'
	WHEN staff_sal>=10000 
	AND staff_sal<25000
	THEN 'C'
	ELSE 'D'
	END AS GRADE
	FROM staff_masters

7.  Display the Staff Name, Hire date and day of the week on which staff was hired.
     Label the column as DAY. Order the result by the day of the week starting with
     Monday
   
     SQL> SELECT staff_name,hiredate,TO_CHAR(hiredate,'fmday') "DAY"
               FROM staff_masters
               ORDER BY TO_CHAR(hiredate,'fmday') DESC


8.  Show staff names with the respective numbers of asterisk from Staff_Masters table
     except first and last characters. For example: KING will be replaced with K**G. .
     Hint: Use substring, rpad and length functions.
     
     SQL>SELECT staff_name,RPAD(SUBSTR(STAFF_NAME,1,1),(LENGTH(STAFF_NAME)-1),'*') || 
              SUBSTR(STAFF_NAME,LENGTH(STAFF_NAME),1)
              FROM staff_masters;

9.  Write a query to find the position of third occurrence of ‘i’ in the given word
     ‘Mississippi’.
     
     SQL>SELECT INSTR('Mississippi','i',1,3) "INSTRING"
     FROM DUAL;

10.  Write a query to find the pay date for the month. Pay date is the last Friday of the
       month. Display the date in the format “Twenty Eighth of January, 2002”. Label the
       heading as PAY DATE. Hint: use to_char,next_day and last_day functions    

     SQL>SELECT staff_name,TO_CHAR(NEXT_DAY(LAST_DAY(hiredate)-7,6),'ddth fmmonth,yyyy') AS PAY DAY
              FROM staff_masters;

11. Display Student code, Name and Dept Name. Display “Electricals” if dept code = 20,
     “Electronics” if Dept code =30 and “Others” for all other Dept codes in the Dept Name
      column. Hint : Use Decode

     SQL>  SELECT student_code,student_name,
                CASE
	WHEN student_masters.dept_code=20
	THEN 'ELECTRONICS'
	WHEN student_masters.dept_code=30
	THEN 'ELECTRICALS'
	ELSE 'OTHERS'
	END AS DEPARTMENT
	FROM student_masters,department_masters;

12. 12. Display the student name and department code of students. If student does not
      belong to any department, display “No Department”. Label the column as
     “Department”. (Hint: Use NVL function)

      SQL>SELECT student_name,dept_name,student_masters.dept_code,
      NVL(dept_name,'NO DEPARTMENT') "DEPARTMENT"    
      FROM student_masters,department_masters
      WHERE department_masters.dept_code=student_masters.dept_code;

