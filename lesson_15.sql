use training;
-- INSERT INTO customers
-- VALUES ('1000000006', 
-- 'Toy Land',
-- '123 Any Street',
-- 'New York',
-- 'NY',
-- '11111',
-- 'USA' ,
-- NULL,
-- NULL);


--  INSERT INTO Customers(cust_id,
--  cust_name, 
--  cust_address, 
--  cust_city,
--  cust_state,
--  cust_ZIP, 
--  cust_country,
--  cust_contact,
--  cus,t_email) 
--  VALUES('1000000006',
--  'Toy Land',
--  '123  Any Street',
--  'New York',
--  'NYJ' ,
--  '11111',
--  'USA',
--  NULL, 
--  NULL); 

-- SELECT * INTO CustCopy FROM Customers; 

 
CREATE TABLE custcopy
AS SELECT *
FROM customers;