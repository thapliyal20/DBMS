LAB 2 

2.2: Group Functions


1.Display the Highest, Lowest, Total & Average salary of all staff. Label the columns
   Maximum, Minimum, Total and Average respectively for each Department code. Also
   round the result to the nearest whole number.

   SQL>SELECT * 
            FROM book_transactions
            WHERE book_actual_return_date IS NULL
            AND (TO_CHAR(book_expected_return_date,'fmDAY'))='SATURDAY';

2.Display Department code and number of managers working in that department. Label
   the column as ‘Total Number of Managers’ for each department.
 
   SQL>SELECT staff_name,LPAD(staff_sal,15,'$')
   FROM staff_masters;

3.Get the Department number, and sum of Salary of all non managers where the sum
    is greater than 20000.

    SQL>SELECT student_name,student_dob,TO_CHAR(student_dob,'month,dd YYYY')
             FROM student_masters
             WHERE (TO_CHAR(student_dob,'fmDAY'))='SATUARDAY'
             OR (TO_CHAR(student_dob,'fmDAY'))='SUNDAY';