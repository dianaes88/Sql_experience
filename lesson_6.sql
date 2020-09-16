USE training;

SELECT p.prod_id, p.prod_name FROM products p WHERE p.prod_name LIKE 'Fish%';
SELECT p.prod_name, p.prod_id FROM products p WHERE p.prod_name LIKE '%bean bag%';
SELECT p.prod_name FROM products p WHERE p.prod_name LIKE 'F%y';
SELECT p.prod_name FROM products p WHERE p.prod_name LIKE '__ inch teddy bear';
SELECT p.prod_name FROM products p WHERE p.prod_name LIKE '_ inch teddy bear';
SELECT p.prod_name FROM products p WHERE p.prod_name LIKE '% inch teddy bear';

