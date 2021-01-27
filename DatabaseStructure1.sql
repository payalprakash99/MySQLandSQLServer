CREATE TABLE customers (
  customer_id int NOT NULL,
  first_name varchar(45) NOT NULL,
  last_name varchar(45) NOT NULL,
  phone varchar(12),
  email varchar(45) NOT NULL,
  street varchar(45),
  city varchar(45),
  state varchar(45) ,
  zipcode varchar(45) ,
  PRIMARY KEY (customer_id)
) 
-- SELECT * FROM customers
CREATE TABLE stores (
  store_id int NOT NULL,
  store_name varchar(45) NOT NULL,
  phone varchar(12),
  email varchar(45),
  street varchar(45),
  city varchar(45) ,
  state varchar(45) ,
  zipcode varchar(45) ,
  PRIMARY KEY (store_id)
)
CREATE TABLE staffs (
  staff_id int NOT NULL,
  first_name varchar(45) ,
  last_name varchar(45) ,
  email varchar(45) ,
  phone varchar(45) ,
  active int ,
  store_id int ,
  manager_id int ,
  PRIMARY KEY (staff_id),
  FOREIGN KEY (manager_id) REFERENCES staffs (staff_id),
  FOREIGN KEY (store_id) REFERENCES stores (store_id) 
)
CREATE TABLE orders (
  orders_id int NOT NULL,
  customer_id int NOT NULL,
  order_status varchar(45) NOT NULL,
  order_date datetime,
  required_date datetime,
  shipped_date datetime,
  store_id int NOT NULL,
  staff_id int NOT NULL,
  PRIMARY KEY (orders_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY (staff_id) REFERENCES staffs (staff_id),
  FOREIGN KEY (store_id) REFERENCES stores (store_id)
)
CREATE TABLE brands (
  brand_id int NOT NULL,
  brand_name varchar(45) NOT NULL,
  PRIMARY KEY (brand_id)
)
CREATE TABLE categories (
  category_id int NOT NULL,
  category_name varchar(45) NOT NULL,
  PRIMARY KEY (category_id)
)

CREATE TABLE products (
  product_id int NOT NULL,
  product_name varchar(45) NOT NULL,
  brand_id int NOT NULL,
  category_id int NOT NULL,
  model_year int NOT NULL,
  list_price decimal NOT NULL,
  PRIMARY KEY (product_id),
  FOREIGN KEY (brand_id) REFERENCES brands (brand_id) ,
  FOREIGN KEY (category_id) REFERENCES categories (category_id) 
)
CREATE TABLE order_items (
  order_id int NOT NULL,
  item_id varchar(45) NOT NULL,
  product_id int NOT NULL,
  quantity int NOT NULL,
  list_price decimal NOT NULL,
  discount decimal NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (order_id) REFERENCES orders (orders_id),
  FOREIGN KEY (product_id) REFERENCES products (product_id) 
  );
  CREATE TABLE stocks (
  store_id int NOT NULL,
  product_id int,
  quantity int,
  PRIMARY KEY (store_id),
  FOREIGN KEY (product_id) REFERENCES products (product_id),
  FOREIGN KEY (store_id) REFERENCES stores (store_id) 
)