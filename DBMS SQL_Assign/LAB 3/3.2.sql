LAB 3 

3.2) Set Operators

1. Get the details of all products irrespective of the fact whether they are in previous set
or current set.
    
SQL>  SELECT * FROM  previous_products UNION SELECT * FROM current_products;

2. Get the details of all products along with the repetition of those that were present both
in the previous and current sets.

SQL>  SELECT * FROM  previous_products UNION ALL SELECT * FROM current_products;

3. Get the details of only those products which were present in the previous set and are
still continuing.

SQL>  SELECT * FROM previous_products INTERSECT SELECT * FROM current_products;

4. Get the details of all obsolete products (no longer continued).    

SQL>  SELECT * FROM previous_products MINUS SELECT * FROM current_products;