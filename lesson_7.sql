use training;
-- SELECT v.vend_name+' ('+ v.vend_country+vend_name + ')' as vendors FROM vendors v ORDER BY v.vend_name;
-- SELECT CONCAT(v.vend_name, ' (', v.vend_country,')') AS vendors FROM vendors v ORDER BY v.vend_name;
SELECT CONCAT(v.vend_name, ' (', RTRIM (v.vend_country),')') AS vend_title FROM vendors v ORDER BY v.vend_name;

SELECT o.prod_id, o.quantity, o.item_price
FROM OrderItems o
WHERE o.order_num = 20008; 

SELECT o.prod_id,
 o.quantity,
 o.item_price,
 o.quantity*o.item_price AS expanded_price
FROM orderitems o
WHERE o.order_num = 20008;