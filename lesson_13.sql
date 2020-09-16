USE training;

SELECT concat((v.vend_name),' (' , RTRIM(v.vend_country)
, ') ') AS vend_title
FROM Vendors v
ORDER BY v.vend_name; 

SELECT c.cust_name, c.cust_state
FROM Customers c, Orders o, orderitems oi
WHERE c.cust_id = o.cust_id
AND oi.order_num = o.order_num
AND oi.prod_id = 'RGAN01'; 

SELECT c.cust_id, c.cust_name, c.cust_contact
FROM customers c 
WHERE c.cust_name = (SELECT c.cust_name
FROM customers c
WHERE c.cust_contact = 'Jim Jones');

SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM Customers AS c1, Customers AS c2
WHERE c1.cust_name = c2.cust_name
AND c2.cust_contact = 'Jim Jones'; 

SELECT c.*, o.order_num, o.order_date, oi.prod_id
FROM customers c, orders o, orderitems oi
WHERE c.cust_id = o.cust_id
AND o.order_num = oi.order_num
AND oi.prod_id = 'RGAN01';

SELECT c.cust_id, o.order_num
FROM customers c INNER JOIN orders o
ON c.cust_id = o.cust_id; 

SELECT c.cust_id, o.order_num
FROM customers c LEFT OUTER JOIN orders o
ON c.cust_id = o.cust_id;

SELECT c.cust_id, o.order_num
FROM customers c RIGHT OUTER JOIN orders o
ON c.cust_id = o.cust_id;

SELECT c.cust_id, COUNT(o.order_num) as nums
FROM customers c INNER JOIN orders o
ON c.cust_id = o.cust_id
GROUP BY c.cust_id;

SELECT c.cust_id, COUNT(o.order_num) as nums
FROM customers c LEFT OUTER JOIN orders o
ON c.cust_id = o.cust_id
GROUP BY c.cust_id;
