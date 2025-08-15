-- SQL SELECT Statement
-- used to select data from a database
-- the data is stored in a result table, called result-set

SELECT file_no,
consignee,
container_no,
eta
FROM shipment_log.shipments;



-- if i want to select all the fields available in the table

SELECT * FROM shipment_log.shipments;




-- SELECT DISTINCT Statement
-- used to return only distinct or different values
SELECT * FROM shipment_log.container_description;

SELECT DISTINCT standard_size
FROM shipment_log.container_description;

SELECT DISTINCT container_type
FROM shipment_log.container_description;




-- list the numbers of different clients
SELECT * FROM shipment_log.client;

SELECT COUNT(DISTINCT client)
FROM shipment_log.client;