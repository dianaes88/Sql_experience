USE training;
SELECT p.prod_id, p.prod_price, p.prod_name FROM products p WHERE p.vend_id ='DLL01' AND p.prod_price <= 4;
SELECT p.prod_name, p.prod_price FROM products p WHERE p.vend_id ='DLL01' OR p.vend_id = 'BRS01';
SELECT p.prod_name, p.prod_price, p.vend_id FROM products p WHERE (p.vend_id = 'DLL01' OR p.vend_id = 'BRS01') AND p.prod_price >= 10; 
SELECT p.prod_name, p.prod_price, p.vend_id FROM products p WHERE p.vend_id IN ('DLL01', 'BRS01') ORDER BY p.prod_name;
SELECT p.prod_name, p.prod_price, p.vend_id FROM products p WHERE p.vend_id = 'DLL01' OR p.vend_id = 'BRS01' ORDER BY p.prod_name;
SELECT p.prod_name, p.vend_id FROM products p WHERE NOT p.vend_id = 'DLL01' ORDER BY p.prod_name;
SELECT p.prod_name, p.prod_price, p.vend_id FROM products p WHERE NOT p.vend_id IN ('DLL01', 'BRS01') ORDER BY p.prod_name;
