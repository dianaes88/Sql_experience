use training;

SELECT v.vend_name, p.prod_name, p.prod_price
FROM vendors v, products p 
WHERE v.vend_id = p.vend_id
ORDER BY v.vend_name;

SELECT v.vend_name, p.prod_name, p.prod_price
FROM vendors v INNER JOIN products p
ON v.vend_id = p.vend_id;

SELECT p.prod_name, v.vend_name, p.prod_price, oi.quantity
FROM orderitems oi, products p, vendors v
WHERE p.vend_id = v.vend_id
AND oi.prod_id = p.prod_id
AND oi.order_num = 20007; 

SELECT p.prod_name, v.vend_name, p.prod_price, oi.quantity
FROM products p INNER JOIN vendors v
ON p.vend_id = v.vend_id 
INNER JOIN  orderitems oi
ON oi.prod_id = p.prod_id
AND oi.order_num = 20007;


SELECT c.cust_name, c.cust_contact
FROM Customers c, Orders o, orderitems oi
WHERE c.cust_id = o.cust_id
AND oi.order_num = o.order_num
AND oi.prod_id = 'RGAN01'; 

SELECT c.cust_name, c.cust_contact
FROM Customers c INNER JOIN orders o
ON c.cust_id = o.cust_id
INNER JOIN orderitems oi
ON oi.order_num = o.order_num
AND oi.prod_id = 'RGAN01'; 


