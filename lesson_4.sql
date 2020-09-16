USE training;
SELECT p.prod_name, p.prod_price FROM products p WHERE p.prod_price = 3.49;
SELECT p.prod_name, p.prod_price FROM products p WHERE p.prod_price < 10;
SELECT p.prod_name, p.prod_price FROM products p WHERE p.prod_price <= 10;
SELECT p.vend_id, p.prod_name FROM products p WHERE p.vend_id <> 'DLL01';
SELECT p.vend_id, p.prod_name FROM products p WHERE p.vend_id != 'DLL01';
SELECT p.prod_name, p.prod_price FROM products p WHERE p.prod_price BETWEEN 5 and 10;
SELECT p.prod_name, p.prod_price FROM products p WHERE p.prod_price IS NULL;
SELECT v.vend_id FROM vendors v WHERE v.vend_state IS NULL;