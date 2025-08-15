-- WHERE clause
-- used to filter records -- extract only those records that fulfil a specified condition

SELECT * FROM shipment_log.container_description;

SELECT * FROM shipment_log.container_description
WHERE standard_size = '40FT'
;

SELECT * FROM shipment_log.client
WHERE client != 'MK'
;

SELECT * FROM shipment_log.shipments
WHERE eta > 2016-06-01
;




-- AND, OR and NOT Operatores
-- AND and OR operators are used to filter records based on more than one condition
-- AND operator displays a record if all conditions separated by AND are TRUE

SELECT standard_size,
container_type
FROM shipment_log.container_description
WHERE standard_size = '40FT' AND container_type = 'STANDARD'
;

-- OR operator displays a record if any of the conditions separated by OR  is TRUE
SELECT container_type,
tons
FROM shipment_log.container_description
WHERE tons >= '20.00' OR container_type = 'DG'
;

-- NOT operator displays a record if the condition is NOT TRUE
SELECT consignee,
client
FROM shipment_log.client
WHERE NOT client = 'MK' 
;

SELECT standard_size,
container_type
FROM shipment_log.container_description
WHERE (NOT standard_size = '20FT' OR NOT standard_size = '40FT') AND container_type = 'RORO'
;





-- ORDER BY keyword
-- used to sort the result-set in ascending or descending order
SELECT * FROM shipment_log.shipments
ORDER BY eta
;

SELECT * FROM shipment_log.shipments
ORDER BY date_received DESC
;





-- LIKE Operator
-- used to search for a spacified pattern in a column
-- % represents zero, one or multiple characters
-- _ represents a single character

SELECT * FROM shipment_log.shipments
WHERE container_no LIKE 'PCIU%'
;

SELECT * FROM shipment_log.shipments
WHERE shipping_line LIKE 'C__'
;

SELECT * FROM shipment_log.client
WHERE client LIKE '%BED'
;
