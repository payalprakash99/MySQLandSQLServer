/*CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(12),
  `email` varchar(45) NOT NULL,
  `street` varchar(45),
  `city` varchar(45),
  `state` varchar(45) ,
  `zipcode` varchar(45) ,
  PRIMARY KEY (`customer_id`)
) ;*/
insert into `customers`(customer_id,first_name,last_name,phone,email,street,city,state,zipcode)
values( 1,'payaal','shah',9898989800,'p@gmail.com','colony','cbe','tn',641011),
(2 ,'madhu','shri',9898989800,'m@gmail.com','colony','kotagiri','tn',643217),
( 3,'payaal','shah',9898989800,'p@gmail.com','colony','cbe','tn',641011),
( 4,'payaal','shah',9898989800,'p@gmail.com','colony','cbe','tn',641011),
( 5,'payaal','shah',9898989800,'p@gmail.com','colony','cbe','tn',641011);
/*select * from customers;
CREATE TABLE `stores` (
  `store_id` int NOT NULL,
  `store_name` varchar(45) NOT NULL,
  `phone` varchar(12),
  `email` varchar(45),
  `street` varchar(45),
  `city` varchar(45) ,
  `state` varchar(45) ,
  `zipcode` varchar(45) ,
  PRIMARY KEY (`store_id`)
);*/
insert into `stores`(store_id,store_name,phone,email,street,city,state,zipcode )
values(01,'H&M','5858583153','a@yahoo.com','rspuram','cbe','tn',641002),
(02,'H&M','5858583153','a@yahoo.com','rspuram','cbe','tn',641002),
(03,'H&M','5858583153','a@yahoo.com','rspuram','cbe','tn',641002),
(04,'H&M','5858583153','a@yahoo.com','rspuram','cbe','tn',641002),
(05,'H&M','5858583153','a@yahoo.com','rspuram','cbe','tn',641002);
select * from stores;
/*CREATE TABLE `staffs` (
  `staff_id` int NOT NULL,
  `first_name` varchar(45) ,
  `last_name` varchar(45) ,
  `email` varchar(45) ,
  `phone` varchar(45) ,
  `active` int ,
  `store_id` int ,
  `manager_id` int ,
  PRIMARY KEY (`staff_id`),
  FOREIGN KEY (`manager_id`) REFERENCES `staffs` (`staff_id`),
  FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
);*/
insert into `staffs`(staff_id,first_name,last_name,email,phone,active,store_id,manager_id)
values(001,'John','Doe','John@rediffmail.com','042-2470525',5 , 01, 001),
(002,'John','Doe','John@rediffmail.com','042-2470525',5 , 01, 001),
(003,'John','Doe','John@rediffmail.com','042-2470525',5 , 01, 001),
(004,'John','Doe','John@rediffmail.com','042-2470525',5 , 01, 001),
(005,'John','Doe','John@rediffmail.com','042-2470525',5 , 01, 001);
select * from staffs;
/*CREATE TABLE `orders` (
  `orders_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_status` varchar(45) NOT NULL,
  `order_date` datetime,
  `required_date` datetime,
  `shipped_date` datetime,
  `store_id` int NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`orders_id`),
  FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`staff_id`),
  FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`)
);*/
insert into `orders`(orders_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id) 
values ( 100, 1, 3, 1/2/2020, 1/4/2020,1/3/2020, 001, 01),
( 101, 1, 3, 1/2/2020, 1/4/2020,1/3/2020, 001, 01),
( 102, 1, 3, 1/2/2020, 1/4/2020,1/3/2020, 001, 01),
( 103, 1, 3, 1/2/2020, 1/4/2020,1/3/2020, 001, 01),
( 104, 1, 3, 1/2/2020, 1/4/2020,1/3/2020, 001, 01);
select * from orders;
/*CREATE TABLE `order_items` (
  `order_id` int NOT NULL,
  `item_id` varchar(45) NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `list_price` decimal NOT NULL,
  `discount` decimal NOT NULL,
  PRIMARY KEY (`order_id`),
   FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`),
  FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) 
  );*/
insert into `order_items`(order_id,item_id,product_id,quantity,list_price,discount)
values ( 101, 501, 901, 10, 750, 13),
( 102, 501, 902, 10, 750, 13),
( 100, 501, 903, 10, 750, 13),
( 103, 501, 904, 10, 750, 13),
( 104, 501, 905, 10, 750, 13);
select * from order_items;
/*CREATE TABLE `brands` (
  `brand_id` int NOT NULL,
  `brand_name` varchar(45) NOT NULL,
  PRIMARY KEY (`brand_id`)
);*/
insert into `brands`(brand_id,brand_name)
values(880,'Attire'),
(881,'Mascot'),
( 882,'GAP'),
(883,'Bennton'),
(884, 'Samsung');
/*CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
);*/
insert into `categories`(category_id,category_name)
values(50,'Denim')
,(49,'Fashion'),
( 48,'Hoodies'),
( 47,'Kids'),
( 46, 'Electronics');
/*CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `brand-id` int NOT NULL,
  `category_id` int NOT NULL,
  `model_year` int NOT NULL,
  `list_price` decimal NOT NULL,
  PRIMARY KEY (`product_id`),
  FOREIGN KEY (`brand-id`) REFERENCES `brands` (`brand_id`) ,
  FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) 
);*/
insert into `products`(`product_id`,`product_name`,`brand-id`,`category_id`,`model_year`,`list_price`)
values ( 901, 'Pro1',709,51,1998, 5500),
( 902, 'Pro2',709,55,1998, 5500),
( 903, 'Pro3',709,54,1998, 5500),
( 904, 'Pro4',709,52,1998, 5500),
( 905, 'Pro5',711,53,1998, 5500);
select * from products;
/*CREATE TABLE `stocks` (
  `store_id` int NOT NULL,
  `product_id` int,
  `quantity` int,
  PRIMARY KEY (`store_id`),
  FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) 
);*/
insert into `stocks`(`store_id`,`product_id`,`quantity`)
values (01, 901,10),(02,902,25),(03,903,30),(04,904,50);
select * from stocks;
