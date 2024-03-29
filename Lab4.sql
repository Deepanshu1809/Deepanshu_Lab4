-- QUESTION 1
CREATE TABLE IF NOT EXISTS supplier(
SUPP_ID INt primary key,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50),
SUPP_PHONE varchar(10) NOT NULL
);
CREATE TABLE IF NOT EXISTS customer(
CUS_ID INT NOT NULL,
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER CHAR,
PRIMARY KEY (CUS_ID));
CREATE TABLE IF NOT EXISTS categORy (
CAT_ID INT NOT NULL,
CAT_NAME VARCHAR(20) NOT NULL,
PRIMARY KEY (CAT_ID)
);
CREATE TABLE IF NOT EXISTS product (
PRO_ID INT NOT NULL,
PRO_NAME VARCHAR(20) NOT NULL DEFAULT "Dummy",
PRO_DESC VARCHAR(60),
CAT_ID INT NOT NULL,
PRIMARY KEY (PRO_ID),
FOREIGN KEY (CAT_ID) REFERENCES CATEGORY (CAT_ID)
);
CREATE TABLE IF NOT EXISTS supplier_pricing (
PRICING_ID INT NOT NULL,
PRO_ID INT NOT NULL,
SUPP_ID INT NOT NULL,
SUPP_PRICE INT DEFAULT 0,
PRIMARY KEY (PRICING_ID),
FOREIGN KEY (PRO_ID) REFERENCES PRODUCT (PRO_ID),
FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER(SUPP_ID)
);
CREATE TABLE IF NOT EXISTS `ORder` (
ORD_ID INT NOT NULL,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE,
CUS_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
PRIMARY KEY (ORD_ID),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID),
FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID)
);
CREATE TABLE IF NOT EXISTS rating (
RAT_ID INT NOT NULL,
ORD_ID INT NOT NULL,
RAT_RATSTARS INT NOT NULL,
PRIMARY KEY (RAT_ID),
FOREIGN KEY (ORD_ID) REFERENCES `ORder`(ORD_ID)
);


-- QUESTION 2

INSERT INTO SUPPLIER VALUES(1,"Rajesh Retails","Delhi",'1234567890');
INSERT INTO SUPPLIER VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO SUPPLIER VALUES(3,"Knome products","BanglORe",'9785462315');
INSERT INTO SUPPLIER VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO SUPPLIER VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');
INSERT INTO CUSTOMER
VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO CUSTOMER VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO CUSTOMER VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO CUSTOMER VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO CUSTOMER VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');
INSERT INTO CATEGORY VALUES( 1,"BOOKS");
INSERT INTO CATEGORY VALUES(2,"GAMES");
INSERT INTO CATEGORY VALUES(3,"GROCERIES");
INSERT INTO CATEGORY VALUES (4,"ELECTRONICS");
INSERT INTO CATEGORY VALUES(5,"CLOTHES");
INSERT INTO PRODUCT VALUES(1,"GTA V","WINdows 7 and above with i5 processOR and 8GB RAM",2);
INSERT INTO PRODUCT VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variatiONs",5);
INSERT INTO PRODUCT VALUES(3,"ROG LAPTOP","WINdows 10 with 15INch screen, i7 processOR, 1TB SSD",4);
INSERT INTO PRODUCT VALUES(4,"OATS","Highly Nutritious FROM Nestle",3);
INSERT INTO PRODUCT VALUES(5,"HARRY POTTER","Best CollectiON of all time by J.K RowlINg",1);
INSERT INTO PRODUCT VALUES(6,"MILK","1L TONed MIlk",3);
INSERT INTO PRODUCT VALUES(7,"Boat EarPhONes","1.5Meter lONg Dolby Atmos",4);
INSERT INTO PRODUCT VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and colOR",5);
INSERT INTO PRODUCT VALUES(9,"Project IGI","compatible with wINdows 7 and above",2);
INSERT INTO PRODUCT VALUES(10,"Hoodie","Black GUCCI fOR 13 yrs and above",5);
INSERT INTO PRODUCT VALUES(11,"Rich Dad PoOR Dad","Written by RObert Kiyosaki",1);
INSERT INTO PRODUCT VALUES(12,"TraIN Your BraIN","By Shireen Stephen",1);
INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);
INSERT INTO `ORDER` VALUES (101,1500,"2023-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2023-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2023-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2023-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2023-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2023-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2023-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2023-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2023-0-10",5,3);
INSERT INTO `ORDER` VALUES(110,2500,"2023-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2023-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2023-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2023-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2023-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2023-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2023-09-17",2,14);
INSERT INTO RATING VALUES(1,101,4);
INSERT INTO RATING VALUES(2,102,3);
INSERT INTO RATING VALUES(3,103,1);
INSERT INTO RATING VALUES(4,104,2);
INSERT INTO RATING VALUES(5,105,4);
INSERT INTO RATING VALUES(6,106,3);
INSERT INTO RATING VALUES(7,107,4);
INSERT INTO RATING VALUES(8,108,4);
INSERT INTO RATING VALUES(9,109,3);
INSERT INTO RATING VALUES(10,110,5);
INSERT INTO RATING VALUES(11,111,3);
INSERT INTO RATING VALUES(12,112,4);
INSERT INTO RATING VALUES(13,113,2);
INSERT INTO RATING VALUES(14,114,1);
INSERT INTO RATING VALUES(15,115,1);
INSERT INTO RATING VALUES(16,116,0);

-- QUESTION 3

SELECT count(t2.cus_gender) AS NoOfCustomers, t2.cus_gender FROM
(SELECT t1.cus_id, t1.cus_gender, t1.ORd_amount, t1.cus_name FROM
(SELECT `ORder`.*, customer.cus_gender, customer.cus_name FROM `ORder` INNER JOIN customer WHERE `ORder`.cus_id=customer.cus_id HAVING
`ORder`.ORd_amount>=3000)
AS t1 GROUP BY t1.cus_id) AS t2 GROUP BY t2.cus_gender;

-- QUESTION 4

SELECT product.pro_name, `ORder`.* FROM `ORder`, supplier_pricing, product
WHERE `ORder`.cus_id=2 and
`ORder`.pricing_id=supplier_pricing.pricing_id and supplier_pricing.pro_id=product.pro_id;

-- QUESTION 5
SELECT supplier.* FROM supplier WHERE supplier.supp_id IN
(SELECT supp_id FROM supplier_pricing GROUP BY supp_id HAVING
count(supp_id)>1)
GROUP BY supplier.supp_id;


-- QUESTION 6

SELECT categORy.cat_id,categORy.cat_name, mIN(t3.mIN_price) AS MIN_Price FROM categORy INNER JOIN
(SELECT product.cat_id, product.pro_name, t2.* FROM product INNER JOIN
(SELECT pro_id, mIN(supp_price) AS MIN_Price FROM supplier_pricing GROUP BY pro_id)
AS t2 WHERE t2.pro_id = product.pro_id)
AS t3 WHERE t3.cat_id = categORy.cat_id GROUP BY t3.cat_id;

-- QUESTION 7

SELECT product.pro_id,product.pro_name FROM `ORder` INNER JOIN supplier_pricing ON supplier_pricing.pricing_id=`ORder`.pricing_id INNER JOIN product
ON product.pro_id=supplier_pricing.pro_id WHERE `ORder`.ORd_date>"2021-10-05";

-- QUESTION 8

SELECT customer.cus_name,customer.cus_gender FROM customer WHERE customer.cus_name like 'A%' OR customer.cus_name like '%A';


-- QUESTION 9

DELIMITER &&
CREATE PROCEDURE proc()
BEGIN
SELECT report.supp_id,report.supp_name,report.Average,
CASE
WHEN report.Average =5 THEN 'Excellent Service'
 WHEN report.Average >4 THEN 'Good Service'
 WHEN report.Average >2 THEN 'Average Service'
 ELSE 'PoOR Service'
END AS Type_of_Service FROM
(SELECT final.supp_id, supplier.supp_name, final.Average FROM
(SELECT test2.supp_id, sum(test2.rat_ratstars)/count(test2.rat_ratstars) AS Average FROM
(SELECT supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS FROM supplier_pricing INNER JOIN
(SELECT `ORder`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS FROM `ORder` INNER JOIN rating ON rating.`ORd_id` = `ORder`.ORd_id ) AS test
ON test.pricing_id = supplier_pricing.pricing_id)
AS test2 GROUP BY supplier_pricing.supp_id)
AS final INNER JOIN supplier WHERE final.supp_id = supplier.supp_id) AS report;
END &&
DELIMITER ;
call proc();
