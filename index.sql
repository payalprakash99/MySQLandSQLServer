CREATE INDEX full_name ON customers(first_name,last_name);
Show index from `customers`;
CREATE INDEX staff_name ON staffs(first_name,last_name);
Show index from `staffs`;
CREATE INDEX contact_customers ON customers(customer_id,phone,email,street,city,state,zipcode);
Show index from `customers`;
CREATE INDEX purchase ON order_items(product_id,quantity,list_price,discount);
Show index from `order_items`;
