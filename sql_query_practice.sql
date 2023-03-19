-- SQL is case insensitive
-- UPPERCASE: keywords, LOWERCASE: non-keywords 

SHOW TABLES;

USE store;
SELECT *
FROM customers
ORDER BY first_name ASC;

SELECT *
FROM customers
ORDER BY last_name DESC;

USE exercise_hr;

SELECT *
FROM employees 
ORDER BY FIRST_NAME DESC;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY FROM employees ORDER BY salary ASC;

SELECT * FROM employees ORDER BY email DESC, SALARY ASC;

USE store;

SELECT *
FROM customers;

SELECT 100 - 50 / 2 AS Arithmetic;

SELECT first_name, last_name, points, points * 1.1 AS 'discount_factor'
FROM customers;

SELECT date_format(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%Y') +0 AS age FROM customers;

 SELECT 171 * 214 + 625 AS calculate;
 
 SELECT first_name, last_name FROM employees;
 
 SELECT first_name, last_name, salary, salary * 0.15 AS PF FROM employees;
 
 SELECT DISTINCT department_id FROM employees;

USE store;
SELECT * FROM customers;

SELECT * FROM customers
WHERE birth_date >= '1990-01-01' OR points < 4000 AND state = 'VA'  ;

SELECT *
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE state = 'FL';

SELECT *
FROM customers
WHERE NOT state = 'FL';

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01';

SELECT * 
FROM customers
WHERE (points < 4000 AND birth_date >= '1990-01-01') OR state = 'VA';

-- ORDER of logical operators
-- AND
-- OR
-- NOT



SELECT first_name, last_name, department_id 
FROM employees 
WHERE department_id = 30 OR department_id = 100 ORDER BY department_id ASC;

SELECT * FROM customers WHERE state = 'VA' OR state = 'FL' OR state = 'GA';

SELECT * FROM customers WHERE state IN ('FL', 'VA', 'GA');

SELECT * FROM products WHERE quantity_in_stock IN (49, 38, 72);

SELECT * FROM customers;

SELECT * FROM customers 
WHERE points BETWEEN 3000 AND 10000;

SELECT * FROM customers 
WHERE address LIKE '%Trail' OR address LIKE '%Avenue';

SELECT * FROM customers 
WHERE phone LIKE '9%';

SELECT * FROM customers 
WHERE phone NOT LIKE '%9';


-- 13-02-2023 

SELECT * FROM orders;

SELECT * FROM order_items;

SELECT * FROM orders WHERE status = 1;

SELECT * FROM order_items ORDER BY unit_price DESC;

SELECT * FROM customers;

SELECT * FROM customers ORDER BY points DESC LIMIT 3;

SELECT * FROM customers WHERE state LIKE '_A';

SELECT * FROM customers WHERE last_name LIKE 'B____y';

SELECT * FROM customers WHERE last_name REGEXP '^Mac';

SELECT * FROM customers WHERE last_name REGEXP 'field$';

SELECT * FROM customers WHERE last_name REGEXP 'field$|^Mac|rose';

SELECT * FROM customers WHERE first_name REGEXP 'Elka|Ambur';

SELECT * FROM customers WHERE last_name REGEXP 'ey$|on$';

SELECT * FROM customers WHERE last_name REGEXP '^my|se';

SELECT * FROM customers WHERE last_name REGEXP 'br|bu';


/*
	^ - starts with
    $ - ends with
    | - logical OR
    [.] - set
*/

SELECT * FROM customers WHERE last_name REGEXP '[a-h]e';

SELECT * FROM customers WHERE last_name REGEXP '[gim]e';

SELECT * FROM customers WHERE last_name REGEXP '^.{6}$' ;

USE exercise_hr;

SELECT * FROM employees WHERE last_name REGEXP 'b.*[ru]';

USE store;
SELECT * FROM customers;

SELECT * 
FROM customers 
WHERE phone IS NOT NULL;

EXPLAIN
SELECT *
FROM customers;

SELECT department_id FROM departments WHERE department_name = 'IT';

SELECT * FROM employees WHERE department_id = 60; 

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, e.department_id FROM employees AS E INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE DEPARTMENT_NAME = 'IT';

SELECT department_id, count(*)AS number_of_employees FROM employees
GROUP BY department_id;

SELECT e.employee_id AS 'EMPLOYEE_ID', CONCAT (e.first_name, e.last_name) AS 'employee_name', m.employee_id AS 'manager_id',
CONCAT(m.first_name, m.last_name) AS "manager__name"
FROM employees AS e INNER JOIN employees AS m
ON e.manager_id = m.employee_id;


-- HW FOR 08-03-2023 --

SELECT * FROM EMPLOYEES; 

SELECT * FROM departments;

SELECT * FROM COUNTRIES WHERE region_ID = 1;

SELECT * FROM LOCATIONS; -- WHERE REGION_ID = 1;

SELECT * FROM REGIONS;

-- constrains --
/* default
   foreign key
   check
   */   












