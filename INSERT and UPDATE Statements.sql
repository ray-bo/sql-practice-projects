-- INSERT INTO statement
-- used to insert new records in a table

SELECT * FROM shipment_log.shipments;

INSERT INTO shipment_log.shipments (file_no, consignee, container_no, bill_of_lading, date_received, shipping_line, vessel, eta)
VALUES ('TRT/016/2016', 'ANDREW', 'CULU9779843', 'AL949230', '2016-12-30', 'MES', 'KOTA', '2017-01-05')
;

INSERT INTO shipment_log.shipments (file_no, consignee, container_no, bill_of_lading, eta)
VALUES ('TRT/017/2016', 'ANDREW', 'JEL09374', 'SJDFJ8973289743', '2017-01-03')
;




SELECT * FROM shipment_log.container_description;

INSERT INTO shipment_log.container_description (file_no, consignee, container_no, standard_size, tons, container_type, yard_all)
VALUES ('TRT/016/2016', 'ANDREW', 'CULU9779843', '40FT', '22.7', 'DG', 'EK/23/T/1')
;

INSERT INTO shipment_log.container_description (file_no, consignee, container_no, standard_size, container_type)
VALUES ('TRT/017/2016', 'ANDREW', 'JEL09374', '1 Unit', 'STANDARD')
;




SELECT * FROM shipment_log.client;

INSERT INTO shipment_log.client (file_no, consignee, container_no, client)
VALUES ('TRT/016/2016', 'ANDREW', 'CULU9779843', 'ANDREW')
;

INSERT INTO shipment_log.client (file_no, consignee, container_no, client)
VALUES ('TRT/017/2016', 'ANDREW', 'JEL09374', 'ANDREW')
;




-- UPDATE Statement
-- used to modify the existing records in the table
-- WHERE clause specifies which record(s) that should be update
-- if it is omitted, all the records in the table will be updated

UPDATE shipment_log.client
SET client = 'DESLER'
WHERE file_no = 'TRT/017/2016'
;
