-- creating database for SAT company
create database sat_company;
use sat_company;
select database(); -- checking which database we are currently working on

-- creating tables and inserting data to it
CREATE TABLE `user` (
  `user_ID` int NOT NULL,
  `user_Name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phonenumber` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_ID`),
  UNIQUE KEY `user_ID` (`user_ID`)
);

INSERT INTO user (user_ID, user_Name, user_email, user_phonenumber)
VALUES ('100', 'Ram' , 'Ram@gmail.com','9865321478'),
	   ('101', 'Shyam' , 'Shyam@gmail.com','9865321479'),
       ('102', 'Hari' , 'Hari@gmail.com','9865321480'),
       ('103', 'Krishna' , 'Krishna@gmail.com','9865321481'),
       ('104', 'Gopal' , 'Gopal@gmail.com','9865321482'),
       ('105', 'Yojan' , 'Yojan@gmail.com','9865321483'),
       ('106', 'Nischal' , 'Nischal@gmail.com','9865321484'),
       ('107', 'Sumit' , 'Sumit@gmail.com','9865321485'),
       ('108', 'Sumitra' , 'Sumitra@gmail.com','9865321486'),
       ('109', 'Pabitra' , 'Pabitra@gmail.com','9865321487'),
       ('110', 'Sumi' , 'Sumi@gmail.com','9865321488'),
       ('111', 'Samir' , 'Samir@gmail.com','9865321489'),
       ('112', 'Manzu' , 'Manzu@gmail.com','9865321490'),
       ('113', 'Manish' , 'Manish@gmail.com','9865321491'),
	   ('114', 'Manisha' , 'Manisha@gmail.com','9865321492'),
       ('115', 'Anish' , 'Anish@gmail.com','9865321493'),
       ('116', 'Anisha' , 'Anisha@gmail.com','9865321494'),
       ('117', 'Ralisha' , 'Ralisha@gmail.com','9865321495'),
       ('118', 'Salisha' , 'Salisha@gmail.com','9865321496'),
       ('119', 'Dipesh' , 'Dipesh@gmail.com','9865321497');

select * from user;

CREATE TABLE Permission (
    Per_ID int not null,
    Per_role_ID int,
    Per_type varchar(255),
    Per_module varchar (255)
);

INSERT INTO permission (Per_ID, Per_role_ID, Per_type, Per_module)
VALUES ('601', '101' ,'system','Mlo1'),
	   ('602', '102' ,'Login','Mlo2'),
       ('603', '103' ,'Administration','Mlo3'),
       ('604', '104' ,'system','Mlo1'),
       ('605', '105' ,'Audit','Mlo4'),
       ('606', '106' ,'Network Access','Mlo5'),
       ('607', '107' ,'system','Mlo1'),
       ('608', '108' ,'Login','Mlo2'),
       ('609', '109' ,'Computer Access','Mlo6'),
       ('610', '110' ,'Database','Mlo7'),
       ('611', '111' ,'system','Mlo1'),
       ('612', '112' ,'Administration','Mlo3'),
       ('613', '113' ,'Data Entry','Mlo8'),
       ('614', '114' ,'system','Mlo1'),
       ('615', '115' ,'Query','Mlo9'),
       ('616', '116' ,'Login','Ml010'),
       ('617', '117' ,'system','Mlo1'),
       ('618', '118' ,'Network Access','Mlo5'),
       ('619', '119' ,'Database','Mlo7'),
       ('620', '101' ,'All data Access','Mlo01');

select * from permission;

CREATE TABLE Roles (
    Role_ID int not null,
    primary key (Role_ID),
    Role_type varchar(255),
    Role_name varchar(255),
    user_ID int,
    foreign key (user_ID) references user (user_ID)
        );

INSERT INTO Roles (Role_ID, Role_type, Role_name)
VALUES ('301', 'Sell' ,'Sales person'),
	   ('302', 'Manage' ,'Manager'),
       ('303', 'Store' ,'Labour'),
       ('304', 'Labeling' ,'Sales Person'),
       ('305', 'Marketing' ,'MR'),
       ('306', 'Counter' ,'Sales person'),
       ('307', 'Packaging' ,'Sales person'),
       ('308', 'System' ,'Computer operator'),
       ('309', 'Transport' ,'Driver'),
       ('310', 'Sell' ,'Local seller'),
       ('311', 'Network' ,'Network Operator'),
       ('312', 'Council' ,'Councilor'),
       ('313', 'Design' ,'Designer'),
       ('314', 'Developing' ,'Developer'),
       ('315', 'Incharge' ,'Production Incharge');

select * from roles;

CREATE TABLE `customer` (
  `customer_ID` int NOT NULL,
  primary key (customer_ID),
  `customer_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Pan_number` int NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(25) DEFAULT NULL,
  UNIQUE KEY `customer_ID` (`customer_ID`,`Pan_number`,`Email`,`phonenumber`)
);

INSERT INTO customer (customer_ID, customer_Name, Address, Pan_number, Email, phonenumber)
VALUES ('101', 'Ashutosh' ,'Koteswor','1201','ashutosh@gmail.com','9874561201'),
	   ('102', 'Anshu' ,'Kamalpokhari','1202','anshu@gmail.com','9874561202'),
       ('103', 'Ashmita' ,'Koteswor','1203','ashmita@gmail.com','9874561203'),
       ('104', 'Ram' ,'Bouddha,Kathmandu','1204','ram@gmail.com','9874561204'),
	   ('105', 'Yojan' ,'Putalisadak','1205','Yojan@gmail.com','9865321483'),
       ('106', 'Nischal' ,'Thapathali','1206','Nischal@gmail.com','9865321484'),
       ('107', 'Sumit' ,'Pepsicola','1207', 'Sumit@gmail.com','9865321485'),
       ('108', 'Sumitra' ,'Teku','1208', 'Sumitra@gmail.com','9865321486'),
       ('109', 'Pabitra' ,'Kuleswor','1209', 'Pabitra@gmail.com','9865321487'),
       ('110', 'Sumi' , 'Putalisadak','1210','Sumi@gmail.com','9865321488'),
       ('111', 'Samir' ,'Tokha','1211', 'Samir@gmail.com','9865321489'),
       ('112', 'Manzu' , 'New Baneswor','1212','Manzu@gmail.com','9865321490'),
       ('113', 'Manish' , 'Mid Baneswor','1213','Manish@gmail.com','9865321491'),
	   ('114', 'Manisha' , 'Old Baneswor','1214','Manisha@gmail.com','9865321492'),
       ('115', 'Anish' , 'Tinkune','1215','Anish@gmail.com','9865321493'),
       ('116', 'Anisha' , 'New Baneswor','1216','Anisha@gmail.com','9865321494'),
       ('117', 'Ralisha' , 'Naikap','1217','Ralisha@gmail.com','9865321495'),
       ('118', 'Salisha' ,'Jorpati','1218', 'Salisha@gmail.com','9865321496'),
       ('119', 'Dipesh' , 'Mulpani','1219','Dipesh@gmail.com','9865321497'),
       ('120', 'Mukesh' , 'New Baneswor','1220','Mukesh@gmail.com','9865321498');

select * from customer;

CREATE TABLE Purchase (
    Purchase_ID int not null,
    primary key(Purchase_ID),
    Purchase_type varchar(255),
    Purchase_desc varchar(255),
    purchase_quantity int,
    customer_ID int,
    product_ID int,
    unique (Purchase_ID),
    foreign key (customer_ID) references customer(customer_ID),
    foreign key (product_ID) references product(Product_ID)
);

INSERT INTO Purchase (Purchase_ID, Purchase_type, Purchase_desc,purchase_quantity, customer_ID, product_ID)
VALUES ('401', 'Direct Purchase' ,'Electronic Devices',10, 107, 501),
	   ('402', 'Direct Purchase' ,'Furnitures',11, 113, 505),
       ('403', 'Direct Purchase' ,'Fashion wear',12, 108, 509),
       ('404', 'Credit Purchase' ,'Home & Living',13, 119, 513),
       ('405', 'Direct Purchase' ,'Mackeup Kit',14, 115, 502),
       ('406', 'Direct Purchase' ,'Jackets',15, 104, 503),
       ('407', 'Credit Purchase' ,'Electronic Devices',16, 102, 504),
       ('408', 'Direct Purchase' ,'Liquor',17, 101, 506),
       ('409', 'Direct Purchase' ,'Bags',18, 120, 507),
       ('410', 'Direct Purchase' ,'Sports',19, 118, 508),
       ('411', 'Direct Purchase' ,'Groceries',20, 111, 517);

select * from purchase;


CREATE TABLE Payment (
    Pay_ID int not null,
    Pay_desc varchar(255),
    Discount_amount Double,
    Tax_amount double,
    Pay_amount double,
    Pay_date time,
    Total Double,
    Purchase_ID int,
    foreign key (Purchase_ID) references purchase(Purchase_ID)
);

INSERT INTO payment (Pay_ID, Pay_desc, Discount_amount, Tax_amount, Pay_amount, Pay_date, Total, Purchase_ID)
VALUES ('1011' ,'Payment of Grocery via FonePay','10','10',1000,2021-01-11,1000, 401),
	   ('1022' ,'Payment of Mobile via esewa','100','15',30000,2021-01-11,30000, 402),
       ('1033' ,'Payment of Grocery via Cash','10','10',2000,2021-01-11,2000, 403),
       ('1044' ,'Payment of Facewash via FonePay','0','10',200,2021-01-11,200, 404),
       ('1055' ,'Payment of Football via Cash','100','10',5000,2021-01-12,5000, 405),
       ('1066' ,'Payment of Grocery via FonePay','10','10',1000,2021-01-12,1000, 406),
       ('1077' ,'Payment of TV via esewa','15','10',200,2021-01-12, 12000, 407),
       ('1088' ,'Payment of Bag via FonePay','20','10',2000,2021-01-12,2000,408),
       ('1099' ,'Payment of T-Shirt via FonePay','50','10',2000,2021-01-12,2000,409),
       ('1111' ,'Payment of Grocery via esewa','100','10',2000,2021-01-12,2000,410),
       ('1122' ,'Payment of Bag via Cash','150','100',2500,2021-01-12,2500,411),
       ('1133' ,'Payment of Football via esewa','0','10',1500,2021-01-12,1500,401),
       ('1144' ,'Payment of Mobile via Cash','200','10',25000,2021-01-12,25000,402),
       ('1155' ,'Payment of Bag via Cash','50','10',2200,2021-01-12,2200,403),
       ('1166' ,'Payment of Hat via Fonepay','150','10',500,2021-01-13,500,404),
       ('1177' ,'Payment of Mobile via Khalti','400','10',40000,2021-01-13,40000,405),
       ('1188' ,'Payment of Grocery via Cash','50','10',3000,2021-01-13,3000,406),
       ('1199' ,'Payment of Bag via Cash','150','10',2500,2021-01-13,2500,407),
       ('1200' ,'Payment of Shoes via Fonepay','500','10',4500,2021-01-13,4500, 408);

select * from payment;

CREATE TABLE Category (
    Category_ID int not null,
    Category_type varchar(255),
    Category_desc varchar(255),
    primary key (Category_ID)
);

INSERT INTO category (Category_ID, Category_type, Category_desc)
VALUES ('1', 'Electronic' ,'Electronic devices like Laptop,Mobile,TV'),
	   ('2', 'Beauty' ,'Beauty Product like Lipstick,Facewash,Powder'),
       ('3', 'Sports' ,'Sports Product like Football, T.T Bat&Ball, Basketball'),
       ('4', 'Fashion' ,'Dresses like One Piece,Hoodie,T-shirt'),
       ('5', 'Home & Living' ,'Home appiliances : Sofa,Bed,Table,Aquarium'),
       ('6', 'Stationery' ,'Pencil,Pen,Books'),
       ('7', 'Bikes' ,'Helmet,Knee Pad,Gloves,Mobile Holder'),
       ('8', 'Music' ,'Guitar,Drum Set ,Piano'),
       ('9', 'Grocery' ,'Grocery items are available'),
       ('10', 'Perfume' ,'Fogg,Wildstone,Axe,Cobra'),
       ('11', 'Glasses' ,'Sun glasses, white glasses, Blue ray UV protected Glasses'),
       ('12', 'Jewellery' ,'Necklase,Ring,Earrings,Braceletes'),
       ('13', 'Fitness' ,'Dumble,Protein Powder,Hand Grip, Resistance Bands'),
       ('14', 'Lights' ,'Led,Lcd,Vapour,Table Lights'),
       ('15', 'Cleaning Products' ,'Brush,Kitchen Cleaner, Lint Remover'),
       ('16', 'Babies & Toys' ,'Baby Gear,Bath Toys, Play Vehicles '),
       ('17', 'Shoes' ,'Slip-Ons & Loafers, Boots, Formal Shoes'),
       ('18', 'Food Suppliments' ,'Multi Vitamins, Weight Management'),
       ('19', 'Medical Supplies' ,'First Aid Supplies, Health Monitors & Tests'),
       ('20', 'Spirits & Beers' ,'Big Master,Gorkha Strong , Red Lable');

select * from category;

CREATE TABLE Product (
    Product_ID int not null,
    primary key (Product_ID),
    Product_type varchar(255),
    Product_desc varchar(255),
    Product_Available int,
    Product_number int not null,
    Category_ID int,
    Created_by int,
    unique (Product_ID,Product_number),
    foreign key (Category_ID) references Category(Category_ID),
    foreign key (Created_by) references user(user_ID)
    );
    
INSERT INTO Product (Product_ID, Product_type, Product_desc, Product_Available, Product_number, Category_ID, Created_by)
VALUES ('501', 'Laptop' ,'Available in Red,Blue,Silver Color','10','001',1, 100),
	   ('502', 'MobilePhone' ,'Available in Black,Blue,Red Color','45','002', 1, 101),
       ('503', 'Toothpaste' ,'Available with one brush free','120','003', 2, 102),
       ('504', 'Toothbrush' ,'Long Lasting and Flexible ','100','004', 2, 103),
       ('505', 'Bags' ,'Durable and available in 3 different color','100','005', 4, 104),
       ('506', 'Dumble' ,'Iron and plastic dumble','100','006', 3, 105),
       ('507', 'Shoes' ,'Nike,Jordan and Adidas','500','007', 4, 106),
       ('508', 'Helmet' ,'Half & Full helmets ','50','008', 7, 107),
       ('509', 'Sofa' ,'Brand new well designed sofa','20','009', 5, 108),
       ('510', 'TV' ,'5 years guarentee ','15','010', 5, 109),
       ('511', 'Bulbs' ,'Led bulbs with 1 year warrenty','30','011', 14, 110),
       ('512', 'Slippers' ,'Available colors: Black,brown and red ','100','012', 4, 111),
       ('513', 'Hat' ,'Available colors: Black,brown and red ','100','013', 4, 112),
       ('514', 'Football' ,'Worldcup edition and Champions League edition','100','014', 3, 113),
       ('515', 'Dolls' ,'Barbie,Bear,Dog Available Colors - Red,Black,White','100','015', 16, 114),
       ('516', 'Flower' ,'Available : Rose and Marigold','100','016', 5, 115),
       ('517', 'T-shirt' ,'Available colors: Black,brown and red Available Size: xxl,xl,l ','38','017', 4, 116),
       ('518', 'Hoodie' ,'Available colors: Black,brown and yellow ','10','018', 4, 117),
       ('519', 'Fan' ,'Available Brand: Rathi,Toofan','50','019', 5, 118),
       ('520', 'Aquarium' ,'Available Size: Large only','10','020', 5, 119),
       ('521', 'Facewash' ,'Available brand: Acne,Himalayan,OXY','100','021', 2, 100),
       ('522', 'Facecream' ,'Available brand: Sunplay,Hada labon,Melano','100','022', 2, 101),
       ('523', 'Watch' ,'Smart Watch, Digital watch','100','023', 4, 102),
       ('524', 'Trimmer' ,'Available brand: Geemy,Nikai,VGR','100','024', 15, 103),
       ('525', 'Gloves' ,'Black Pro Biker Grip Full Gloves','80','025', 17, 104),
       ('526', 'Guitar' ,'Available brand: Mantra,Givson,Medellin','15','026', 8, 105),
       ('527', 'Water Bottle' ,'FUYE Sports Outdoor Water Bottle-950ml ','100','027', 3, 106),
       ('528', 'Resistance Bands' ,'5 in 1 Fitness Resistance Bands Set for Legs and Butt','100','028', 13, 107),
       ('529', 'Hand Grip' ,'SPN Adjustable Hand Grip Strengthener-multicolor','100','029', 13, 108),
       ('530', 'Camera' ,'Available brand: Canon,eken,GOPro','25','030', 1, 109);

select * from product;

CREATE TABLE Sales (
    Sales_ID int not null,
    Sales_type varchar(255),
    Sales_desc varchar(255),
    Sales_num int,
    Product_ID int,
    primary key (Sales_ID),
    foreign key (Product_ID) references product(Product_ID)

);

INSERT INTO Sales (Sales_ID, Sales_type, Sales_desc, Sales_num, Product_ID)
VALUES ('201', 'Direct sales' ,'Sofa',15, 509),
	   ('202', 'Credit sales' ,'MobilePhone',17, 502),
       ('203', 'B2B sales' ,'Hat',3, 513),
       ('204', 'Inside sales' ,'Gloves', 21, 525),
       ('205', 'Direct sales' ,'Hoodie',28, 518),
       ('206', 'Credit sales' ,'Camera',6, 530),
       ('207', 'Direct sales' ,'Laptop',6, 501),
       ('208', 'Outside sales' ,'T-Shirt',60, 517),
       ('209', 'Direct sales' ,'Dumble',17, 506),
       ('210', 'Outside sales' ,'Trimmer',3, 524),
       ('211', 'B2B sales' ,'Facewash',150, 521),
       ('212', 'Direct sales' ,'Trimmer',233, 524),
       ('213', 'Inside sales' ,'T-Shirt',560, 517),
       ('214', 'Credit sales' ,'Laptop',45, 501),
       ('215', 'Direct sales' ,'Hand Grip',3, 529),
       ('216', 'Outside sales' ,'Football',2500, 514),
       ('217', 'Outside sales' ,'Helmet',96, 508),
       ('218', 'Direct sales' ,'Toothbrush', 5600, 504),
       ('219', 'B2B sales' ,'Dolls',110, 515),
       ('220', 'Credit sales' ,'Guitar',56, 526);

select * from sales;

select category.Category_type, product.Product_type
from category
inner join product
on category.Category_ID = product.Category_ID;

select product.Product_type, product.Product_desc, sales.Sales_num
from product
inner join sales
on product.Product_ID = sales.Product_ID;

select customer.customer_Name, purchase.Purchase_type, payment.Pay_desc, payment.Discount_amount, payment.Tax_amount, payment.Pay_amount, payment.Total
from ((customer
inner join purchase
on customer.customer_ID = purchase.customer_ID)
inner join payment
on purchase.Purchase_ID = payment.Purchase_ID)
order by customer_Name ASC;

select customer.customer_Name as highest_paying_customer, max(payment.Total) as amount_paid
from ((customer
inner join purchase
on customer.customer_ID = purchase.customer_ID)
inner join payment
on purchase.Purchase_ID = payment.Purchase_ID);

select customer.customer_Name as largest_number_of_items_purchased_by, max(purchase.purchase_quantity) as items_bought
from customer
inner join purchase
on customer.customer_ID = purchase.customer_ID;

select product.Product_type, user.user_Name as created_by
from product
inner join user
on product.Created_by = user.user_ID;

select sales.Sales_num, product.Product_type
from sales
inner join product
on sales.Product_ID = product.Product_ID;

select purchase.purchase_quantity, product.Product_type
from purchase
inner join product
on purchase.Product_ID = product.Product_ID;






