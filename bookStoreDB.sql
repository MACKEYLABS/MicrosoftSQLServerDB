CREATE TABLE Customers
(CustomerId  INT,
LastName VARCHAR(10) NOT NULL,
FirstName VARCHAR(10) NOT NULL,
Address VARCHAR(20),
City VARCHAR(12),
State CHAR(2),
Zip CHAR(5),
Referred CHAR(4),
Region CHAR(2),
  CONSTRAINT customers_customerId_pk PRIMARY KEY(customerId),
  CONSTRAINT customers_region_ck
                CHECK (region IN ('N', 'NW', 'NE', 'S', 'SE', 'SW', 'W', 'E')) );

INSERT INTO CUSTOMERS
VALUES (1001, 'MORALES', 'BONITA', 'P.O. BOX 651', 'EASTPOINT', 'FL', '32328', NULL, 'SE');
INSERT INTO CUSTOMERS
VALUES (1002, 'THOMPSON', 'RYAN', 'P.O. BOX 9835', 'SANTA MONICA', 'CA', '90404', NULL, 'W');
INSERT INTO CUSTOMERS 
VALUES (1003, 'SMITH', 'LEILA', 'P.O. BOX 66', 'TALLAHASSEE', 'FL', '32306', NULL, 'SE'); 
INSERT INTO CUSTOMERS 
VALUES (1004, 'PIERSON', 'THOMAS', '69821 SOUTH AVENUE', 'BOISE', 'ID', '83707', NULL, 'NW'); 
INSERT INTO CUSTOMERS 
VALUES (1005, 'GIRARD', 'CINDY', 'P.O. BOX 851', 'SEATTLE', 'WA', '98115', NULL, 'NW'); 
INSERT INTO CUSTOMERS 
VALUES (1006, 'CRUZ', 'MESHIA', '82 DIRT ROAD', 'ALBANY', 'NY', '12211', NULL, 'NE'); 
INSERT INTO CUSTOMERS 
VALUES (1007, 'GIANA', 'TAMMY', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 1003, 'SW'); 
INSERT INTO CUSTOMERS 
VALUES (1008, 'JONES', 'KENNETH', 'P.O. BOX 137', 'CHEYENNE', 'WY', '82003', NULL, 'N'); 
INSERT INTO CUSTOMERS 
VALUES (1009, 'PEREZ', 'JORGE', 'P.O. BOX 8564', 'BURBANK', 'CA', '91510', 1003, 'W'); 
INSERT INTO CUSTOMERS 
VALUES (1010, 'LUCAS', 'JAKE', '114 EAST SAVANNAH', 'ATLANTA', 'GA', '30314', NULL, 'SE'); 
INSERT INTO CUSTOMERS 
VALUES (1011, 'MCGOVERN', 'REESE', 'P.O. BOX 18', 'CHICAGO', 'IL', '60606', NULL, 'N');  
INSERT INTO CUSTOMERS 
VALUES (1012, 'MCKENZIE', 'WILLIAM', 'P.O. BOX 971', 'BOSTON', 'MA', '02110', NULL, 'NE'); 
INSERT INTO CUSTOMERS 
VALUES (1013, 'NGUYEN', 'NICHOLAS', '357 WHITE EAGLE AVE.', 'CLERMONT', 'FL', '34711', 1006, 'SE'); 
INSERT INTO CUSTOMERS 
VALUES (1014, 'LEE', 'JASMINE', 'P.O. BOX 2947', 'CODY', 'WY', '82414', NULL, 'N'); 
INSERT INTO CUSTOMERS 
VALUES (1015, 'SCHELL', 'STEVE', 'P.O. BOX 677', 'MIAMI', 'FL', '33111', NULL, 'SE'); 
INSERT INTO CUSTOMERS 
VALUES (1016, 'DAUM', 'MICHELL', '9851231 LONG ROAD', 'BURBANK', 'CA', '91508', 1010, 'W'); 
INSERT INTO CUSTOMERS 
VALUES (1017, 'NELSON', 'BECCA', 'P.O. BOX 563', 'KALMAZOO', 'MI', '49006', NULL, 'N'); 
INSERT INTO CUSTOMERS 
VALUES (1018, 'MONTIASA', 'GREG', '1008 GRAND AVENUE', 'MACON', 'GA', '31206', NULL, 'SE'); 
INSERT INTO CUSTOMERS 
VALUES (1019, 'SMITH', 'JENNIFER', 'P.O. BOX 1151', 'MORRISTOWN', 'NJ', '07962', 1003, 'NE'); 
INSERT INTO CUSTOMERS 
VALUES (1020, 'FALAH', 'KENNETH', 'P.O. BOX 335', 'TRENTON', 'NJ', '08607', NULL, 'NE'); 
 
CREATE TABLE Orders 
(OrderId INT, 
CustomerId INT, 
OrderDate DATE NOT NULL, 
ShipDate DATE, 
ShipStreet VARCHAR(18), 
ShipCity VARCHAR(15), 
ShipState CHAR(2), 
ShipZip CHAR(5),
ShipCost DECIMAL(4,2),
  CONSTRAINT orders_orderId_pk PRIMARY KEY(orderId),
  CONSTRAINT orders_customerId_fk FOREIGN KEY (customerId)
    REFERENCES customers(customerId)); 
 
INSERT INTO ORDERS 
VALUES (1000,1005,'31-MAR-09','02-APR-09','1201 ORANGE AVE', 'SEATTLE', 'WA', '98114' , 2.00); 
INSERT INTO ORDERS 
VALUES (1001,1010,'31-MAR-09','01-APR-09', '114 EAST SAVANNAH', 'ATLANTA', 'GA', '30314', 3.00); 
INSERT INTO ORDERS 
VALUES (1002,1011,'31-MAR-09','01-APR-09','58 TILA CIRCLE', 'CHICAGO', 'IL', '60605', 3.00); 
INSERT INTO ORDERS 
VALUES (1003,1001,'01-APR-09','01-APR-09','958 MAGNOLIA LANE', 'EASTPOINT', 'FL', '32328', 4.00); 
INSERT INTO ORDERS 
VALUES (1004,1020,'01-APR-09','05-APR-09','561 ROUNDABOUT WAY', 'TRENTON', 'NJ', '08601', NULL); 
INSERT INTO ORDERS 
VALUES (1005,1018,'01-APR-09','02-APR-09', '1008 GRAND AVENUE', 'MACON', 'GA', '31206', 2.00); 
INSERT INTO ORDERS 
VALUES (1006,1003,'01-APR-09','02-APR-09','558A CAPITOL HWY.', 'TALLAHASSEE', 'FL', '32307', 2.00); 
INSERT INTO ORDERS 
VALUES (1007,1007,'02-APR-09','04-APR-09', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 7.00); 
INSERT INTO ORDERS 
VALUES (1008,1004,'02-APR-09','03-APR-09', '69821 SOUTH AVENUE', 'BOISE', 'ID', '83707', 3.00); 
INSERT INTO ORDERS 
VALUES (1009,1005,'03-APR-09','05-APR-09','9 LIGHTENING RD.', 'SEATTLE', 'WA', '98110', NULL); 
INSERT INTO ORDERS 
VALUES (1010,1019,'03-APR-09','04-APR-09','384 WRONG WAY HOME', 'MORRISTOWN', 'NJ', '07960', 2.00); 
INSERT INTO ORDERS 
VALUES (1011,1010,'03-APR-09','05-APR-09', '102 WEST LAFAYETTE', 'ATLANTA', 'GA', '30311', 2.00); 
INSERT INTO ORDERS 
VALUES (1012,1017,'03-APR-09',NULL,'1295 WINDY AVENUE', 'KALMAZOO', 'MI', '49002', 6.00); 
INSERT INTO ORDERS 
VALUES (1013,1014,'03-APR-09','04-APR-09','7618 MOUNTAIN RD.', 'CODY', 'WY', '82414', 2.00); 
INSERT INTO ORDERS 
VALUES (1014,1007,'04-APR-09','05-APR-09', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 3.00); 
INSERT INTO ORDERS 
VALUES (1015,1020,'04-APR-09',NULL,'557 GLITTER ST.', 'TRENTON', 'NJ', '08606', 2.00); 
INSERT INTO ORDERS 
VALUES (1016,1003,'04-APR-09',NULL,'9901 SEMINOLE WAY', 'TALLAHASSEE', 'FL', '32307', 2.00); 
INSERT INTO ORDERS 
VALUES (1017,1015,'04-APR-09','05-APR-09','887 HOT ASPHALT ST', 'MIAMI', 'FL', '33112', 3.00); 
INSERT INTO ORDERS 
VALUES (1018,1001,'05-APR-09',NULL,'95812 HIGHWAY 98', 'EASTPOINT', 'FL', '32328', NULL); 
INSERT INTO ORDERS 
VALUES (1019,1018,'05-APR-09',NULL, '1008 GRAND AVENUE', 'MACON', 'GA', '31206', 2.00); 
INSERT INTO ORDERS 
VALUES (1020,1008,'05-APR-09',NULL,'195 JAMISON LANE', 'CHEYENNE', 'WY', '82003', 2.00); 
 
CREATE TABLE Publishers 
(PubID INT, 
Name VARCHAR(23), 
Contact VARCHAR(15), 
Phone VARCHAR(12),
  CONSTRAINT Publishers_pubid_pk PRIMARY KEY(pubid)); 
 
INSERT INTO Publishers 
VALUES(1,'PRINTING IS US','TOMMIE SEYMOUR','000-714-8321'); 
INSERT INTO Publishers 
VALUES(2,'PUBLISH OUR WAY','JANE TOMLIN','010-410-0010'); 
INSERT INTO Publishers 
VALUES(3,'AMERICAN PUBLISHING','DAVID DAVIDSON','800-555-1211'); 
INSERT INTO Publishers 
VALUES(4,'READING MATERIALS INC.','RENEE SMITH','800-555-9743'); 
INSERT INTO Publishers 
VALUES(5,'REED-N-RITE','SEBASTIAN JONES','800-555-8284'); 
 
CREATE TABLE AUTHORS 
(AUTHORSID VARCHAR(4), 
Lname VARCHAR(10), 
Fname VARCHAR(10),
  CONSTRAINT AUTHORS_AUTHORSid_pk PRIMARY KEY(AUTHORSid)); 
 
INSERT INTO AUTHORS 
VALUES ('S100','SMITH', 'SAM'); 
INSERT INTO AUTHORS 
VALUES ('J100','JONES','JANICE'); 
INSERT INTO AUTHORS 
VALUES ('A100','AUSTIN','JAMES'); 
INSERT INTO AUTHORS 
VALUES ('M100','MARTINEZ','SHEILA'); 
INSERT INTO AUTHORS 
VALUES ('K100','KZOCHSKY','TAMARA'); 
INSERT INTO AUTHORS 
VALUES ('P100','PORTER','LISA'); 
INSERT INTO AUTHORS 
VALUES ('A105','ADAMS','JUAN'); 
INSERT INTO AUTHORS 
VALUES ('B100','BAKER','JACK');  
INSERT INTO AUTHORS 
VALUES ('P105','PETERSON','TINA'); 
INSERT INTO AUTHORS 
VALUES ('W100','WHITE','WILLIAM'); 
INSERT INTO AUTHORS 
VALUES ('W105','WHITE','LISA'); 
INSERT INTO AUTHORS 
VALUES ('R100','ROBINSON','ROBERT'); 
INSERT INTO AUTHORS 
VALUES ('F100','FIELDS','OSCAR'); 
INSERT INTO AUTHORS 
VALUES ('W110','WILKINSON','ANTHONY'); 
 
CREATE TABLE Books 
(ISBN VARCHAR(10), 
Title VARCHAR(30), 
PubDate DATE, 
PubID INT, 
Cost DECIMAL (5,2), 
Retail DECIMAL (5,2), 
Discount DECIMAL (4,2),
Category VARCHAR(12),
  CONSTRAINT books_isbn_pk PRIMARY KEY(isbn),
  CONSTRAINT books_pubid_fk FOREIGN KEY (pubid)
    REFERENCES Publishers (pubid)); 
 
INSERT INTO BOOKS 
VALUES ('1059831198','BODYBUILD IN 10 MINUTES A DAY','21-JAN-05',4,18.75,30.95, NULL, 'FITNESS'); 
INSERT INTO BOOKS 
VALUES ('0401140733','REVENGE OF MICKEY','14-DEC-05',1,14.20,22.00, NULL, 'FAMILY LIFE'); 
INSERT INTO BOOKS 
VALUES ('4981341710','BUILDING A CAR WITH TOOTHPICKS','18-MAR-06',2,37.80,59.95, 3.00, 'CHILDREN'); 
INSERT INTO BOOKS 
VALUES ('8843172113','DATABASE IMPLEMENTATION','04-JUN-03',3,31.40,55.95, NULL, 'COMPUTER'); 
INSERT INTO BOOKS 
VALUES ('3437212490','COOKING WITH MUSHROOMS','28-FEB-04',4,12.50,19.95, NULL, 'COOKING'); 
INSERT INTO BOOKS 
VALUES ('3957136468','HOLY GRAIL OF ORACLE','31-DEC-05',3,47.25,75.95, 3.80, 'COMPUTER'); 
INSERT INTO BOOKS 
VALUES ('1915762492','HANDCRANKED COMPUTERS','21-JAN-05',3,21.80,25.00, NULL, 'COMPUTER'); 
INSERT INTO BOOKS 
VALUES ('9959789321','E-BUSINESS THE EASY WAY','01-MAR-06',2,37.90,54.50, NULL, 'COMPUTER'); 
INSERT INTO BOOKS 
VALUES ('2491748320','PAINLESS CHILD-REARING','17-JUL-04',5,48.00,89.95, 4.50, 'FAMILY LIFE'); 
INSERT INTO BOOKS 
VALUES ('0299282519','THE WOK WAY TO COOK','11-SEP-04',4,19.00,28.75, NULL, 'COOKING'); 
INSERT INTO BOOKS 
VALUES ('8117949391','BIG BEAR AND LITTLE DOVE','08-NOV-05',5,5.32,8.95, NULL, 'CHILDREN'); 
INSERT INTO BOOKS 
VALUES ('0132149871','HOW TO GET FASTER PIZZA','11-NOV-06',4,17.85,29.95, 1.50, 'SELF HELP'); 
INSERT INTO BOOKS 
VALUES ('9247381001','HOW TO MANAGE THE MANAGER','09-MAY-03',1,15.40,31.95, NULL,  'BUSINESS'); 
INSERT INTO BOOKS 
VALUES ('2147428890','SHORTEST POEMS','01-MAY-05',5,21.85,39.95, NULL, 'LITERATURE'); 
 
CREATE TABLE ORDERITEMS 
     ( OrderId INT,
       ItemId INT,
       ISBN VARCHAR(10),
       Quantity INT NOT NULL, 
       PaidEach DECIMAL(5,2) NOT NULL,
       CONSTRAINT orderitems_orderid_itemid_pk PRIMARY KEY (OrderId, ItemId),
       CONSTRAINT orderitems_orders_orderid_fk FOREIGN KEY (OrderId)
             REFERENCES orders (OrderId) ,
       CONSTRAINT orderitems_books_isbn_fk FOREIGN KEY (isbn)
             REFERENCES books (isbn) ,
       CONSTRAINT oderitems_quantity_ck CHECK (quantity > 0) );
 
INSERT INTO ORDERITEMS 
VALUES (1000,1,'3437212490',1,19.95);  
INSERT INTO ORDERITEMS 
VALUES (1001,1,'9247381001',1,31.95);  
INSERT INTO ORDERITEMS 
VALUES (1001,2,'2491748320',1,85.45);  
INSERT INTO ORDERITEMS 
VALUES (1002,1,'8843172113',2,55.95);  
INSERT INTO ORDERITEMS 
VALUES (1003,1,'8843172113',1,55.95);  
INSERT INTO ORDERITEMS 
VALUES (1003,2,'1059831198',1,30.95); 
INSERT INTO ORDERITEMS 
VALUES (1003,3,'3437212490',1,19.95); 
INSERT INTO ORDERITEMS 
VALUES (1004,1,'2491748320',2,85.45); 
INSERT INTO ORDERITEMS 
VALUES (1005,1,'2147428890',1,39.95); 
INSERT INTO ORDERITEMS 
VALUES (1006,1,'9959789321',1,54.50); 
INSERT INTO ORDERITEMS 
VALUES (1007,1,'3957136468',3,72.15); 
INSERT INTO ORDERITEMS 
VALUES (1007,2,'9959789321',1,54.50); 
INSERT INTO ORDERITEMS 
VALUES (1007,3,'8117949391',1,8.95); 
INSERT INTO ORDERITEMS 
VALUES (1007,4,'8843172113',1,55.95); 
INSERT INTO ORDERITEMS 
VALUES (1008,1,'3437212490',2,19.95); 
INSERT INTO ORDERITEMS 
VALUES (1009,1,'3437212490',1,19.95); 
INSERT INTO ORDERITEMS 
VALUES (1009,2,'0401140733',1,22.00); 
INSERT INTO ORDERITEMS 
VALUES (1010,1,'8843172113',1,55.95); 
INSERT INTO ORDERITEMS 
VALUES (1011,1,'2491748320',1,85.45); 
INSERT INTO ORDERITEMS 
VALUES (1012,1,'8117949391',1,8.95); 
INSERT INTO ORDERITEMS 
VALUES (1012,2,'1915762492',2,25.00); 
INSERT INTO ORDERITEMS 
VALUES (1012,3,'2491748320',1,85.45); 
INSERT INTO ORDERITEMS 
VALUES (1012,4,'0401140733',1,22.00); 
INSERT INTO ORDERITEMS 
VALUES (1013,1,'8843172113',1,55.95); 
INSERT INTO ORDERITEMS 
VALUES (1014,1,'0401140733',2,22.00); 
INSERT INTO ORDERITEMS 
VALUES (1015,1,'3437212490',1,19.95); 
INSERT INTO ORDERITEMS 
VALUES (1016,1,'2491748320',1,85.45); 
INSERT INTO ORDERITEMS 
VALUES (1017,1,'8117949391',2,8.95); 
INSERT INTO ORDERITEMS 
VALUES (1018,1,'3437212490',1,19.95); 
INSERT INTO ORDERITEMS 
VALUES (1018,2,'8843172113',1,55.95); 
INSERT INTO ORDERITEMS 
VALUES (1019,1,'0401140733',1,22.00); 
INSERT INTO ORDERITEMS 
VALUES (1020,1,'3437212490',1,19.95); 
 
CREATE TABLE BOOKAUTHORS 
(ISBN VARCHAR(10), 
 AUTHORSId VARCHAR(4),
  CONSTRAINT bookAUTHORS_pk PRIMARY KEY (isbn, AUTHORSid),
  CONSTRAINT bookAUTHORS_books_isbn_fk FOREIGN KEY (isbn)
             REFERENCES books (isbn),
  CONSTRAINT bookAUTHORS_AUTHORS_AUTHORSid_fk FOREIGN KEY (AUTHORSid)
             REFERENCES AUTHORS (AUTHORSid)); 
 
INSERT INTO BOOKAUTHORS 
VALUES ('1059831198','S100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('1059831198','P100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('0401140733','J100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('4981341710','K100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('8843172113','P105'); 
INSERT INTO BOOKAUTHORS 
VALUES ('8843172113','A100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('8843172113','A105'); 
INSERT INTO BOOKAUTHORS 
VALUES ('3437212490','B100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('3957136468','A100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('1915762492','W100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('1915762492','W105'); 
INSERT INTO BOOKAUTHORS 
VALUES ('9959789321','J100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('2491748320','R100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('2491748320','F100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('2491748320','B100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('0299282519','S100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('8117949391','R100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('0132149871','S100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('9247381001','W100'); 
INSERT INTO BOOKAUTHORS 
VALUES ('2147428890','W105'); 
 
CREATE TABLE promotions 
(Gift  varchar(15), 
 Minretail DECIMAL(5,2), 
 Maxretail DECIMAL(5,2)); 
 
INSERT into promotions 
 VALUES ('BOOKMARKER', 0, 12); 
INSERT into promotions 
 VALUES ('BOOK LABELS', 12.01, 25); 
INSERT into promotions 
 VALUES ('BOOK COVER', 25.01, 56); 
INSERT into promotions 
 VALUES ('FREE SHIPPING', 56.01, 999.99); 
COMMIT; 



 
 

 