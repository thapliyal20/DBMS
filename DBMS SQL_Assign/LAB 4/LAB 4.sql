LAB 4

DATABASE OBJECTS 

    4.1  CREATE TABLE Customer(CustomerId Number(5),Cust_Name varchar2(20),
	 Address1 Varchar2(30),Address2 Varchar2(30));

     5.  5.1 ALTER TABLE Customer RENAME COLUMN Cust_Name TO CustomerName;
	 5.2 ALTER TABLE Customer MODIFY CustomerName varchar2(30);

     6.  a. ALTER TABLE Customer ADD (GENDER VARCHAR2(1),Age Number(3),
	    PhoneNo Number(10));
	 
 	 b. b.1) RENAME Customer TO Cust_Table;
	    
	    b.2) Insert into cust_Table values(1000,'Allen', '#115 Chicago', 
		 '#115 Chicago', 'M',25,7878776);
		 
		 Insert into cust_Table values(1001,'George', '#116 France', 	
                 '#116 France', 'M',25,434524); 

		 Insert into cust_Table values(1002, 'Becker','#114 New York',
		 '#114 New York','M',45,431525);

     7.  ALTER TABLE cust_Table ADD CONSTRAINT Custld_Prim PRIMARY KEY(CUSTOMERID);

     8.  Insert into cust_Table values(1002, 'John','#114 Chicago',
	 '#114 Chicago','M',45,439525); 
	
	 ERROR:  An UPDATE or INSERT statement attempted to insert a duplicate key.

     9.  ALTER TABLE cust_Table DROP CONSTRAINT Custld_Prim;
	 
	 Insert into cust_Table values(1002,'Becker','#115 New York', 
	 '#115 New York', 'M',45,431525);

	 Insert into cust_Table values(1003,'Nanapatekar','#115 India', 
	 '#115 India','M',45,431525);


    10. ERROR: Remove the duplicates and null values before enabling a primary Key. 

    11. ALTER TABLE CUST DROP PRIMARY KEY
      INSERT INTO CUST VALUES(1002,'Becker','#114 New York','#114 New york',45,'m',431525)
      INSERT INTO CUST VALUES(1003,'Nanapatekar','#115 India','#115 India',45,'m',431525) 

    12. TRUNCATE TABLE Cust_Table;

    13. ALTER TABLE Cust_Table ADD E_mail varchar2(50);

    14. ALTER TABLE Cust_Table DROP COLUMN E_mail;

    15. ALTER TABLE Cust_Table ADD EmailId varchar2(50);

    16. ALTER TABLE Cust_Table SET UNUSED COLUMN EmailId;

    17. ALTER TABLE Cust_Table DROP UNUSED COLUMNS;

    18. CREATE TABLE SUPPLIERS (SuppID NUMBER(5),SName VARCHAR2(20),
	Addr1 VARCHAR2(30),Addr2 VARCHAR2(30),Contactno NUMBER(10));

    19. DROP TABLE SUPPLIERS;

	CREATE TABLE CustomerMaster (CustomerId NUMBER(5) CONSTRAINT CustId_PK PRIMARY KEY,
                CustomerName Varchar2(30) Not Null,Addressl Varchar2(30) Not Null,
                Address2 Varchar2(30), Gender Varchar2(l), Age Number(3), PhoneNo Number(10));

    20. CREATE Sequence Account_Num    
	start with 10001              /* Creating Sequence having name Account_Num 
	increment by 1                  starting with 10001 and incrementing by 1 */

	CREATE TABLE AccountsMaster(
	CustomerID Number(5),
	AccountNumber Number(10,2) CONSTRAINT Acc_PK PRIMARY KEY,
	AccountType Char(3),
	LedgerBalance Number(10,2) Not Null
	);                         //Creating Table having name AccountsMasters. 

	INSERT INTO AccountsMaster values( 1233,Account_Num.NEXTVAL,'NRI',10000.00);
	
	INSERT INTO AccountsMaster values (1234,Account_Num.NEXTVAL ,'IND',12000.00);
			
	/*Inserting values in table and Account_Num value with the help of sequence Account_Num. */

    21. ALTER TABLE Acc_Master ADD CONSTRAINT Cust_id FOREIGN KEY(cust_id) REFERENCE cust(cust_id)

    22. Insert into CustomerMaster values(1000,'Allen','#115 Chicago','#115 Chicago','M',25,7878776);

	Insert into CustomerMaster values(1001,'George','#116 France','#116 France', 'M',25,434524);

	Insert into CustomerMaster values(1002, 'Becker','#114 NewYork',
	'#114 NewYork','M',45,431525);

    23. ALTER TABLE ACCOUNTSMASTER ADD CONSTRAINT acc_type CHECK (ACCOUNTTYPE='IND' OR ACCOUNTTYPE='NRI' );

    24. INSERT INTO AccountsMaster values( 1235,Account_Num.NEXTVAL,'NRI',35000.00);
	
	INSERT INTO AccountsMaster values (1236,Account_Num.NEXTVAL ,'IND',75000.00);

	INSERT INTO AccountsMaster values( 1237,Account_Num.NEXTVAL,'IND',60000.00);
	
	INSERT INTO AccountsMaster values (1238,Account_Num.NEXTVAL ,'IND',50000.00);

	INSERT INTO AccountsMaster values (1239,Account_Num.NEXTVAL ,'NRI',30000.00);

    25. ALTER TABLE ACCOUNTSMASTER ADD CONSTRAINT Balance_Check CHECK 				(LEDGERBALANCE>5000);

    26. ALTER TABLE Acc_Master ADD CONSTRAINT cust_id FOREIGN KEY(cust_id) 
          REFERENCE Cust(cust_id) ON DELETE CASCADE; 

    27. CREATE SYNONYM AccountDetails FOR ACCOUNTSMASTER;

    28. RENAME AccountDetails TO BackUpTable;

    29. CREATE VIEW Acc_view(customercode,accountnumber,
        account_type,ledger_balance ) AS SELECT * FROM ACCOUNTSMASTER;  

    30. CREATE VIEW vAccs_Dtls AS SELECT * FROM ACCOUNTSMASTER WHERE ACCOUNTTYPE= 'IND' 		AND LEDGERBALANCE>10000;

    31.   
	
	