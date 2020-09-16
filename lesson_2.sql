USE training;
-- SELECT p.prod_name FROM products p;

-- SELECT p.prod_id, p.prod_name, p.prod_price FROM products p;
-- SELECT * FROM products p;
-- SELECT p.prod_name FROM products p ORDER BY p.prod_name;
-- SELECT p.prod_id, p.prod_name, p.prod_price FROM products p ORDER BY p.prod_price, p.prod_name;
-- SELECT p.prod_id, p.prod_name, p.prod_price FROM products p ORDER BY 3,2;
SELECT p.prod_id, p.prod_name, p.prod_price FROM products p ORDER BY p.prod_price desc;
SELECT p.prod_id, p.prod_name, p.prod_price FROM products p ORDER BY p.prod_price desc, p.prod_name;