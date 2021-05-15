create database cakeShop;
use cakeShop;


CREATE TABLE tblcustomer (
  ID int(11) NOT NULL AUTO_INCREMENT,
  CUSTOMERID varchar(90) ,
  FIRSTNAME varchar(90) ,
  LASTNAME varchar(90) ,
  CITYADDRESS varchar(90) ,
  ADDRESS varchar(90) ,
  CONTACTNUMBER varchar(30) ,
  ZIPCODE int(11) ,
  DATEJOIN datetime NOT NULL,
  PRIMARY KEY (ID),
  UNIQUE KEY CUSID (CUSTOMERID)
) ;

INSERT INTO tblcustomer (ID, CUSTOMERID, FIRSTNAME, LASTNAME, CITYADDRESS, ADDRESS, CONTACTNUMBER, ZIPCODE, DATEJOIN) VALUES
(1, '100200157', 'Shravani', 'Dusane', 'Nashik', '29A Coloso  6 Nashik', '09123456789', 6111,'2020-12-25 01:08:37'),
(2, '100200159', 'Vaibhav', 'pilot', 'Indore', ' 29 Indore', '09123498765', 4411,'2020-12-26 06:08:37'),
(3, '100200188', 'same', 'patidar', 'Indore', ' 71 Indore', '09123498764', 1234,'2020-12-27 02:08:37'),
(4, '100200178', 'arnav', 'sharma', 'Indore', ' 38 Indore', '09123498775', 9999,'2020-12-28 07:08:37'),
(6, '100200168', 'priyanshu', 'tamrakar', 'Indore', ' 21 Indore', '09123499765', 8989,'2020-12-29 04:08:37'),
(7, '100200128', 'vihan', 'patel', 'Indore', ' 91 Indore', '09323498765', 2929,'2020-12-12 12:08:37'),
(8, '100200222', 'Venam', 'verma', 'Indore', ' 223Indore', '09423498765', 3456,'2020-12-15 01:08:37'),
(9, '100200228', 'amit', 'chouhan', 'Indore', ' 76 Indore', '09153498765', 2791,'2020-12-11 04:04:37'),
(10, '100200998', ' ', 'rajput', 'Indore', ' 77 Indore', '09111498765', 0307,'2020-11-22 02:05:37');


select * from  tblcustomer ;
drop  table tblcustomer;

CREATE TABLE tblcategory (
  CATEGORYID int(11) NOT NULL AUTO_INCREMENT,
  CATEGORY varchar(90) NOT NULL,
  PRIMARY KEY (CATEGORYID)
);

INSERT INTO tblcategory (CATEGORYID, CATEGORY) VALUES
(1, 'Fresh Bread'),
(2, 'Cakes'),
(3, 'Pastries');

CREATE TABLE  tblorder(
  ORDERID int(11) NOT NULL AUTO_INCREMENT,
  PRODUCTID int(11) ,
  DATEORDER datetime ,
  O_QTY int(11) ,
  O_PRICE int(11) ,
  DATECLAIM datetime NOT NULL,
  ORDERTYPE varchar(30) ,
  STATS varchar(30) ,
  ORDERNUMBER varchar(50) NOT NULL,
  CUSTOMERID int(11) NOT NULL,
  PRIMARY KEY (ORDERID)
);
INSERT INTO tblorder (ORDERID, PRODUCTID, DATEORDER, O_QTY, O_PRICE, DATECLAIM, ORDERTYPE, STATS, ORDERNUMBER, CUSTOMERID) VALUES
(1, 2, '2020-04-24 10:50:48', 1, 500, '2020-02-25 15:02:25', 'Cash on Delivery', 'Confirmed', '10230765561', 100200157),
(2, 6, '2020-02-25 10:50:48', 10, 100, '2020-02-25 15:02:25', 'Cash on Delivery', 'Confirmed', '10230765561', 100200157),
(3, 6, '2020-02-25 11:12:39', 5, 50, '2020-02-25 15:02:25', 'Cash on Delivery', 'Confirmed', '10230765562', 100200157),
(4, 5, '2020-02-25 11:12:39', 1, 375, '2020-02-25 15:02:25', 'Cash on Delivery', 'Confirmed', '10230765562', 100200157),
(5, 6, '2020-02-25 11:15:28', 5, 50, '2020-02-25 15:02:25', 'Cash on Pickup', 'Confirmed', '10230765563', 100200157),
(6, 15, '2020-02-26 07:22:59', 10, 50, '2020-02-26 15:02:26', 'Cash on Delivery', 'Confirmed', '10230765564', 100200158),
(7, 6, '2020-02-26 07:22:59', 5, 50, '2020-02-26 15:02:26', 'Cash on Delivery', 'Confirmed', '10230765564', 100200158),
(8, 11, '2020-02-26 07:26:55', 1, 270, '2020-02-26 15:02:26', 'Cash on Pickup', 'Confirmed', '10230765565', 100200158),
(9, 3, '2020-02-26 07:37:47', 6, 78, '2020-02-26 15:02:26', 'Cash on Pickup', 'Confirmed', '10230765566', 100200160),
(10, 32, '2020-02-26 07:37:47', 2, 66, '2020-02-26 15:02:26', 'Cash on Pickup', 'Confirmed', '10230765566', 100200160);


select * from  tblorder;

CREATE TABLE  tblpayment (
  ID int(11) NOT NULL AUTO_INCREMENT,
  ORDERNUMBER varchar(50) NOT NULL,
  CUSTOMERID int(11) NOT NULL,
  DATEORDER datetime NOT NULL,
  CLAIMDATE datetime NOT NULL,
  PAYMENTMETHOD varchar(30) NOT NULL,
  ALLQTY int(11) NOT NULL,
  TOTALPRICE double NOT NULL,
  STATS varchar(30) NOT NULL,
  REMARKS text NOT NULL,
  HVIEW tinyint(1) NOT NULL,
  PRIMARY KEY (ID)
);
INSERT INTO tblpayment (ID, ORDERNUMBER, CUSTOMERID, DATEORDER, CLAIMDATE, PAYMENTMETHOD, ALLQTY, TOTALPRICE, STATS, REMARKS, HVIEW) VALUES
(1, '10230765561', 100200157, '2020-12-02 10:50:49', '2020-12-02 15:02:25', 'Cash on Delivery', 0, 625, 'Confirmed', 'Your order has been confirmed.', 1),
(2, '10230765562', 100200157, '2020-12-11 11:12:39', '2020-12-11 15:02:25', 'Cash on Delivery', 0, 450, 'Confirmed', 'Your order has been confirmed. The ordered products will be yours in the exact date and time that you have set.', 1),
(3, '10230765563', 100200157, '2020-12-14 11:15:28', '2020-12-14 15:02:25', 'Cash on Pickup', 0, 50, 'Confirmed', 'Your order has been confirmed. The ordered products will be yours in the exact date and time that you have set.', 1),
(4, '10230765564', 100200158, '2020-12-22 07:22:59', '2020-12-22 15:02:26', 'Cash on Delivery', 0, 125, 'Confirmed', 'Your order has been confirmed.', 0),
(5, '10230765565', 100200158, '2020-12-09 07:37:47', '2020-12-09 15:02:26', 'Cash on Pickup', 0, 270, 'Confirmed', 'Your order has been confirmed.', 0),
(6, '10230765566', 100200160, '2020-12-09 07:41:20', '2020-12-09 15:02:26', 'Cash on Pickup', 0, 144, 'Confirmed', 'Your order has been confirmed.', 0),
(7, '10230765567', 100200160, '2020-12-22 07:44:38', '2020-12-22 15:02:26', 'Cash on Pickup', 0, 52, 'Confirmed', 'Your order has been confirmed.', 0),
(8, '10230765568', 100200160, '2015-02-26 07:44:38', '2015-02-26 15:02:26', 'Cash on Pickup', 0, 80, 'Confirmed', 'Your order has been confirmed.', 0),
(9, '10230765569', 100200162, '2015-02-26 07:51:26', '2015-02-26 15:02:26', 'Cash on Delivery', 0, 552, 'Confirmed', 'Your order has been confirmed.', 0);

select * from  tblpayment;

CREATE TABLE  tblproducts (
  PRODUCTID int(11) NOT NULL AUTO_INCREMENT,
  PRODUCTNAME varchar(90) ,
  PRODUCTTYPE varchar(90) ,
  DESCRIPTION text,
  CATEGORYID int(11) ,
  QTY int(11),
  PRICE int(11),
  STATUS varchar(30) NOT NULL,
  PRIMARY KEY (PRODUCTID)
) ;


INSERT INTO tblproducts (PRODUCTID, PRODUCTNAME, PRODUCTTYPE, DESCRIPTION, CATEGORYID, QTY, PRICE, STATUS) VALUES
(2, 'fresh cream cake with strawberries', 'NONE', 'NONE', 2, 12, 500, 'NotAvailable'),
(3, 'Brownies','NONE', 'NONE', 2, 1, 130, 'Available'),
(4, 'Banana cake','NONE', 'NONE',2 , 07, 380, 'NotAvailable'),
(5, ' red velvet','NONE', 'NONE', 2, 6, 400, 'Available'),
(6, 'real cream','NONE', 'NONE', 1, 02, 2400, 'Available'),
(7, 'delicious candy','NONE', 'NONE', 2, 08, 120, 'NotAvailable'),
(8, 'pastry cola','NONE', 'NONE',3 , 06, 20, 'Available');
select * from  tblproducts;
update tblproducts set  QTY ='1123' where id=3;
               -----------------------------------
CREATE TRIGGER id_increment 
    BEFORE UPDATE ON tblproducts
    FOR EACH ROW 
 INSERT INTO tblproducts
 SET action = 'update',
     PRODUCTID = OLD.PRODUCTID,
     PRODUCTNAME = OLD.PRODUCTNAME,
     changedat = NOW();
     
SHOW TRIGGERS;
select * from tblproducts
              ----------------------------------------

DELIMITER $$
create procedure CUR_EXP1()
begin 
declare FNAME VARCHAR(90);
declare zp INT;
-- declare TOTAL_SALARY INT default 0;
declare FINISHED integer default 0;
declare SA_CUR CURSOR FOR SELECT  FIRSTNAME, ZIPCODE  FROM tblcustomer ;
 DECLARE CONTINUE handler for  NOT FOUND SET FINISHED=1;
OPEN SA_CUR;
GETNAME:LOOP
FETCH SA_CUR INTO FNAME,zp;
IF FINISHED=1 THEN
LEAVE GETNAME;
END IF;
SELECT FNAME,zp FROM tblcustomer; 
END LOOP GETNAME;
close SA_CUR;
END $$

CALL CUR_EXP1();
                  ------------------------

SELECT tblorder. ORDERID , tblcustomer. FIRSTNAME, tblorder.STATS
FROM Orders
INNER JOIN tblcustomer
ON tblorder.ID = tblcustomer.CUSTOMERID;
            ---------------------------------------

create table ex_tblproducts as select * from tblproducts;
truncate ex_tblproducts ;
select * from ex_tblproducts  ;

 delimiter $$
create trigger after_det after delete on tblproducts
for each row
begin
    insert into ex_tblproducts (PRODUCTNAME, QTY,PRICE) 
    values(old.PRODUCTNAME,old.QTY,old.PRICE);  
end;

select count(*) from tblproducts;
set SQL_SAFE_UPDATES=0;
delete from tblproducts where =3;
select * from ex_tblproducts;

