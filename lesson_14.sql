use training;
SELECT c.cust_name, c.cust_contact, c.cust_email
FROM customers c 
WHERE c.cust_state IN('IL', 'IN', 'MI')
OR c.cust_name='Fun4All';

SELECT c.cust_name, c.cust_contact, c.cust_email
FROM customers c 
WHERE c.cust_state IN('IL', 'IN', 'MI')
UNION ALL
SELECT c.cust_name, c.cust_contact, c.cust_email
FROM customers c 
WHERE c.cust_name='Fun4All';

SELECT c.cust_name, c.cust_contact, c.cust_email
FROM customers c 
WHERE c.cust_state IN('IL', 'IN', 'MI')
UNION 
SELECT c.cust_name, c.cust_contact, c.cust_email
FROM customers c 
WHERE c.cust_name='Fun4All';