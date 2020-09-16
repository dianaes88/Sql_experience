USE training;

SELECT v.vend_name, UPPER(v.vend_name) AS vend_name_upcase FROM vendors v ORDER BY v.vend_name;
SELECT c.cust_name, c.cust_contact FROM customers c WHERE SOUNDEX(c.cust_contact) = SOUNDEX('Michael Green');
SELECT o.order_num FROM orders o WHERE YEAR(o.order_date) = 2012;

SELECT AVG(p.prod_price) AS avg_price FROM products p;
SELECT AVG(p.prod_price) AS avg_price FROM products p WHERE p.vend_id = 'DLL01'; 

SELECT COUNT(*) AS num_cust FROM customers c;
SELECT COUNT(c.cust_email) AS num_cust FROM customers c;

SELECT MAX(p.prod_price) AS max_price FROM products p;

SELECT MIN(p.prod_price) AS min_price FROM products p;

SELECT SUM(o.quantity) AS item_ordered FROM orderitems o WHERE o.order_num = 20005;

SELECT SUM(o.item_price*o.quantity) AS total_price FROM orderitems o WHERE o.order_num = 20005;

SELECT AVG(DISTINCT p.prod_price) AS avg_price
FROM Products p
WHERE p.vend_id = 'DLL01'; 

SELECT COUNT(*) AS num_items,
MIN(p.prod_price) AS price_min,
MAX(p.prod_price) AS price_max,
AVG(p.prod_price) AS proce_avg
FROM Products p; 