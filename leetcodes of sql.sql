
1.Write a solution to find the ids of products that are both low fat and recyclable.


Input: 
Products table:                                                            query:   SELECT Products_id
+-------------+----------+------------+                                             FROM Product
| product_id  | low_fats | recyclable |                                             WHERE low_fats = 'Y' and recyclable = 'Y';                                           
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+
Output: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
Explanation: Only products 1 and 3 are both low fat and recyclable.




2.Find the names of the customer that are not referred by the customer with id = 2.


Input: 
Customer table:                                                         query:    SELECT name
+----+------+------------+                                                        FROM Customer
| id | name | referee_id |                                                        where referee_id != 2 OR referee_id IS NULL;
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+




3.A country is big if:
  it has an area of at least three million (i.e., 3000000 km2), or
  it has a population of at least twenty-five million (i.e., 25000000).
  Write a solution to find the name, population, and area of the big countries.

Input: 
World table:
+-------------+-----------+---------+------------+--------------+      query: Select name , population , area
| name        | continent | area    | population | gdp          |             from World
+-------------+-----------+---------+------------+--------------+             Where population >= 25000000 Or area >= 3000000;
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
+-------------+-----------+---------+------------+--------------+
Output: 
+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+


4.Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.
 

Input: 
Views table:
+------------+-----------+-----------+------------+                    query: select distinct author_id as id
| article_id | author_id | viewer_id | view_date  |                           from Views
+------------+-----------+-----------+------------+                           where author_id = viewer_id
| 1          | 3         | 5         | 2019-08-01 |                           order by asc;
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+
Output: 
+------+
| id   |
+------+
| 4    |
| 7    |
+------+

5.Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Input: 
Tweets table:                                                      	query: SELECT tweet_id
+----------+-----------------------------------+                               FROM Tweets
| tweet_id | content                           |                               WHERE LENGTH(content) > 15;                                
+----------+-----------------------------------+                               
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |
+----------+-----------------------------------+
Output: 
+----------+
| tweet_id |
+----------+
| 2        |
+----------+

6.Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Input: 
Employees table:                                                      query: select EmployeeUNI.unique_id,Employees.name                                                
+----+----------+                                                            from employees
| id | name     |                                                            left join EmployeeUNI
+----+----------+                                                            using (id);                                                       
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |
+----+----------+
EmployeeUNI table:
+----+-----------+
| id | unique_id |
+----+-----------+
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |
+----+-----------+
Output: 
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+

7.Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

Input: 
Sales table:                                                           query:SELECT p.product_name, s.year, s.price
+---------+------------+------+----------+-------+                           FROM Sales s LEFT JOIN Product p ON
| sale_id | product_id | year | quantity | price |                               s.product_id = p.product_id
+---------+------------+------+----------+-------+                           
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |
+---------+------------+------+----------+-------+
Product table:
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |
+------------+--------------+
Output: 
+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+


8.Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Input:                                                               query: select Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
Visits                                                                      FROM Visits
+----------+-------------+                                                  LEFT JOIN Transactions
| visit_id | customer_id |                                                    USING (visit_id) 
+----------+-------------+                                                  WHERE Transactions.transaction_id IS NULL           
| 1        | 23          |                                                  GROUP BY 1;                                                
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |
+----------+-------------+
Transactions
+----------------+----------+--------+
| transaction_id | visit_id | amount |
+----------------+----------+--------+
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |
+----------------+----------+--------+
Output: 
+-------------+----------------+
| customer_id | count_no_trans |
+-------------+----------------+
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |
+-------------+----------------+




9.Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Input:                                                               query: SELECT w1.id
Weather table:                                                              FROM
+----+------------+-------------+                                               Weather AS w1
| id | recordDate | temperature |                                               JOIN Weather AS w2
+----+------------+-------------+                                                   ON DATEDIFF(w1.recordDate, w2.recordDate) = 1 AND w1.temperature > w2.temperature;
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+



10.Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

Input:
The CITY table is described as follows:
+------------+------------+
| Field      | Type       |                                          query: select*
+------------+------------+                                                 from city
| ID         | NUMBER     |                                                 where Countrycode = 'USA' and Population > 100000;                    
| NAME       | VARCHAR(17)|
| COUNTRYCODE| VARCHAR(3) |
| DISTRICT   | VARCHAR(20)|
| POPULATION | NUMBER     |
+------------+------------+



11.The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

Input: 
Activity table:
+------------+------------+---------------+-----------+                   query: select s.machine_id, round(avg(e.timestamp-s.timestamp),3) as processing_time                       
| machine_id | process_id | activity_type | timestamp |                          from activity s
+------------+------------+---------------+-----------+                          join activity e 
| 0          | 0          | start         | 0.712     |                          on s.machine_id = e.machine_id
| 0          | 0          | end           | 1.520     |                          and s.process_id=e.process_id 
| 0          | 1          | start         | 3.140     |                          and s.activity_type="start" and e.activity_type="end" 
| 0          | 1          | end           | 4.120     |                          group by s.machine_id;
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |
+------------+------------+---------------+-----------+
Output: 
+------------+-----------------+
| machine_id | processing_time |
+------------+-----------------+
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |
+------------+-----------------+



