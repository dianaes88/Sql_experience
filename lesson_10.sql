use training;

SELECT COUNT(*) AS num_prods
FROM Products p
WHERE p.vend_id = 'DLL01'; 

SELECT p.vend_id, COUNT(*) AS num_prods
FROM Products p
GROUP BY p.vend_id; 

SELECT o.cust_id, COUNT(*) AS orders
FROM Orders o
GROUP BY o.cust_id
HAVING COUNT(*) >= 2; 

SELECT p.vend_id, COUNT(*) AS num_prods
FROM Products p
WHERE prod_price >= 4
GROUP BY p.vend_id
HAVING COUNT(*) >= 2; 

SELECT o.order_num, COUNT(*) AS items
FROM OrderItems o
GROUP BY o.order_num
HAVING COUNT(*) >= 3; 