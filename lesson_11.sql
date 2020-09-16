use training;

SELECT o.cust_id FROM orders o
WHERE o.order_num IN(
SELECT oi.order_num FROM orderitems oi
WHERE oi.prod_id = 'RGAN01');


SELECT c.cust_name, c.cust_contact
FROM Customers c
WHERE cust_id IN (SELECT o.cust_id
FROM Orders o
WHERE o.order_num IN (SELECT oi.order_num
FROM orderitems oi
WHERE oi.prod_id = 'RGAN01')); 

SELECT c.cust_name, c.cust_state, (
SELECT COUNT(*) FROM orders o WHERE c.cust_id = o.cust_id) AS orders
FROM customers c
ORDER BY c.cust_name;