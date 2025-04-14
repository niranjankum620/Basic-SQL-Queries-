/*-------- BASIC SQL QUERIES--------*/

-- TO CREATE DATABASE --

CREATE DATABASE empinfo;
use empinfo;

-- TO CREATE TABLE-- 

CREATE TABLE empinfo(
        First_name VARCHAR(20),
        Last_name VARCHAR(20),
        Emp_id INT PRIMARY KEY,
        Age INT,
        City VARCHAR(50),
        State varchar(20)
);

-- TO PUT VALUES --

INSERT INTO empinfo (First_name,Last_name,Emp_id,Age,City,State) 
VALUES
      ('john','jones',99980,45,'payson','Arizona'),
      ('Mary','Jones',99982,25,'Payson','Arizona'),
      ('Eric','Edwards',88232,32,'San Diego','California'),
      ('Mary Ann','Edwars',88233,32,'Phonix','Arizona'),
      ('Ginger','Howell',98002,42,'Cottonwood','Arizona'),
      ('Gus','Gray',22322,35,'Bagdad','Arizona'),
      ('Mary Ann','May',32326,52,'Tuscon','Arizona'),
      ('Erica','William',32327,60,'Show','Low Arizona'),
      ('Leoroy','Brown',32380,22,'pinetop','Arizona'),
      ('Elroy','Cleaver',32382,22,'Globe','Arizona');

-- TO VIEW TABLE --

SELECT * FROM empinfo;

-- SELECT ALL THE FIRST_NAME , LAST_NAME AND CITY FROM THE TABLE WHOSE NAMES STARTS WITH "ER"

SELECT First_name,last_name,City FROM empinfo WHERE First_name LIKE 'Er%';

 -- SELECT ALL THE FIRST_NAME , LAST_NAME AND CITY FROM THE TABLE WHOSE NAMES ENDS WITH "S"

SELECT First_name,Last_name,City FROM empinfo WHERE Last_name LIKE '%s';

-- SELECT ALL THE DATAILS FROM THE TABLE WHOSE FIRST_NAME IS EQUAL TO "ERIC" EXACTLY 

SELECT * FROM empinfo
WHERE First_name = 'Eric';

-- DISPLAY THE FIRST_NAME AND AGE FOR EVERYONE THAT IS THE TABLE

SELECT First_name, Age FROM empinfo;

-- DISPLAY THE FIRST_NAME ,LAST_NAME AND CITY FOR EVERYONE THIS IS NOT FROM "PAYSON" 

SELECT First_name,Last_name,City FROM empinfo 
    WHERE not city ='payson'; 
    
--  Display All column for everyone that is over 40 years old

SELECT * FROM empinfo 
Where Age>40;   

-- Display the first_name ,Last_name for everyone where Last name ends in 'an''ay

SELECT First_name,Last_name FROM empinfo
WHERE Last_name LIKE '%ay';

-- display All column where first_name Equal to "MERRY"

SELECT * FROM empinfo 
WHERE First_name= 'Mary';

-- display all the column for everyone where first_name contain "Mar"

SELECT * FROM empinfo
WHERE First_name LIKE 'Mar%';

-- SELECT FIRST NMAE  AND LAST NAME & AGE FROM TABLE HWERE LAST NAME CONTAIN "ILLIA"

SELECT * FROM empinfo 
  WHERE Last_name LIKE '%illiam'; 
  
  -- DISPLAY ALL FIRST ,LAST NAME  ,CITY & STATE WHOSE FIRST_NAME START WITH "j"
  
  SELECT First_name,Last_name,CITY,STATE FROM empinfo
  WHERE First_name LIKE 'J%';
  
  -- DISPALY THE LAST_NAME AND CITY OF EMPLOYEA WHOSE BELONGS TO ARIZONA AND WHOSE AGE IS GREATER THAN 25
  
  SELECT Last_name, City FROM empinfo 
  WHERE State= 'Arizona' AND Age>25;
  
  -- DISPLAY THE DETAILS OF EMPLOYEE WITH ID 32382, 32326, 99980
  
  SELECT * FROM empinfo 
  WHERE Emp_id IN (32382,32326,99980);
  
  -- COUNT THE NUMBER OF EMPLOYEE  WHERE WORK IN TUCSON AND PAYSON
  
  SELECT City, COUNT(*) AS Employe_count FROM empinfo 
   WHERE City IN ('Tuscon','Payson') GROUP BY City;
   
   -- DISPLAY THE FIRST AND LAST NAME IN A  SINGLE COLOUMN 
   
   SELECT CONCAT(First_name,'  ' , Last_name) AS Full_Name FROM empinfo;
   
   -- DISPLAY THE RECORD LIKE HELLO JOHN WELCOME TO PAYSON CITY WHERE NAME AND CITY HAS TO BE FETCH FROM TABLE FOR ALL THE EMPLOYEES
   
   SELECT CONCAT('HELLO ', First_name, ' WELCOME TO ', City, ' city') AS message FROM empinfo;
   
   -- DISPLAY THE DETAILS OF EMPLOYEES WHERE FIRST NAME AND LAST ANME STARTS WITH THE SAME CHARACTERS
   
   SELECT *FROM empinfo WHERE SUBSTR(first_name,1,1) = SUBSTR(Last_name,1,1);
   
   /*----- THANK YOU -----*/
