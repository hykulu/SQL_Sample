Demo Database:

+-------------+-------------+---------------+------------+--------------+--------------+--------------+--------+
| CustomerID  |CustomerName | ContactName   | Address    | City         |  postalCode  | Country      |  Price |
+-------------+-------------+---------------+------------+--------------+--------------+--------------+--------+                         
| 1           | PRABHAS     | DARLING       | STR.143    | Berlin       |  12209       | Germany      |  18    | 
| 2           | SURYA       | FAIR          | SUR.72     | Mexico D.F   |  05021       | Mexico       |  19    |  
| 3           | NANI        | STAR          | NAI.2222   | Mexico       |  05023       | Mexico       |  10    |
| 4           | RAM         | CUTE          | C-212      | London       |  WA1 1DP     | UK           |  22    |
| 5           | VARUN       | SWEET         | 120 VU SQ. | Lulea        |  S-958 22    | Spain        |  21    | 
+-------------+-------------+---------------+------------+--------------+--------------+--------------+--------+
                         

BASIC SYNTAX:
SELECT column1, column2,....
FROM table_name;

>>>CREATE TABLE-Creates a new table.
syntax:
      CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT);
EX:
   CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ContactName VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Price INT
);


>>> INSERT INTO-Used to insert new records.
Syntax:
       INSERT INTO table_name (column1, column2, column3, ...)
       VALUES (value1, value2, value3, ...);
EX:
   INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country, Price) VALUES
   (1, 'PRABHAS', 'DARLING', 'STR.143', 'Berlin', '12209', 'Germany', 18),
   (2, 'SURYA', 'FAIR', 'SUR.72', 'Mexico D.F', '05021', 'Mexico', 19),
   (3, 'NANI', 'STAR', 'NAI.2222', 'Mexico', '05023', 'Mexico', 10),
   (4, 'RAM', 'CUTE', 'C-212', 'London', 'WA1 1DP', 'UK', 22),
   (5, 'VARUN', 'SWEET', '120 VU SQ.', 'Lulea', 'S-958 22', 'Spain', 21);
       

>>>SELECT-extracts data from a database
 EX:    
   SELECT select_list
   FROM table_name;


>>>Select ALL columns-If you want to return all columns, without specifying every column name, you can use the SELECT * syntax:
EX:
   SELECT * FROM Customers;

>>>SELECT DISTINCT-The SELECT DISTINCT statement is used to return only distinct (different) values.
SYNTAX:
      SELECT DISTINCT column1, column2, ...
      FROM table_name;
EX:
   SELECT DISTINCT Country FROM Customers;

>>>WHERE Clause-The WHERE clause is used to filter records.
Syntax:
      SELECT column1, column2, ...
      FROM table_name
      WHERE condition;
EX:
   SELECT * FROM Customers
   WHERE Country='Mexico';

>>>UPDATE-Used to modify existing records.
SYNTAX:
       UPDATE table_name
       SET column1 = value1, column2 = value2, ...
       WHERE condition;
EX:
   UPDATE Customers
   SET ContactName='Juan'
   WHERE Country='Mexico';

>>>DELETE-Deletes records from a table.
Syntax:
       DELETE FROM table_name WHERE condition;
EX:
   DELETE FROM Customers WHERE CustomerName='NANI';

>>>DROP TABLE-Deletes the entire table and its data.
Syntax:
       DROP TABLE table_name;
EX:
   DROP TABLE Customers;
   
>>>TRUNCATE TABLE – Deletes all data but keeps the table structure.
Syntax:
       TRUNCATE TABLE table_name;
EX:
   TRUNCATE TABLE Customers;

>>>AND,OR,NOT-Combines multiple conditions.
SYNTAX:
       SELECT * FROM table_name
       WHERE condition1 AND condition2;
1.AND-Returns true if both conditions are true.
  EX:
      SELECT * FROM Customers
      WHERE Country = 'Mexico'
      AND (CustomerName LIKE 'S%' OR CustomerName LIKE 'N%');
      
2.OR-Returns true if at least one condition is true.
  EX:
     SELECT * FROM Customers
     WHERE Country = 'Germany' OR Country = 'Spain';

3. NOT-Reverses the result (returns true if the condition is false).
   SYNTAX:
          SELECT * FROM table_name
          WHERE NOT condition;
     EX:
        SELECT * FROM Customers
        WHERE NOT Country = 'Spain';

>>>ORDER BY-Used to sort the results.
syntax:
       SELECT column1, column2, ...
       FROM table_name
       ORDER BY column1, column2, ... ASC|DESC;        
EX:
   SELECT * FROM Products
   ORDER BY Price DESC;
