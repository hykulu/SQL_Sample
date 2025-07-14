Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:
          STATION
+-------------+-------------+
| Field       | Type        | 
+-------------+-------------+
| ID          | NUMBER      |
| CITY        | VARCHAR2(21)|
| STATE       | VARCHAR2(2) |
| LAT_N       | NUMBER      |
| LONG_W      | NUMBER      |
+-------------+-------------+

QUERY:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u';
