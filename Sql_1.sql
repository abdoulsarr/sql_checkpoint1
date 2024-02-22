CREATE TABLE client(
	customer_id INT PRIMARY KEY,
	name VARCHAR(30),
	adresse VARCHAR(20),
);

CREATE TABLE product(
	product_id INT PRIMARY KEY,
	name VARCHAR(40),
	price DECIMAL(10,2) CHECK (price> 0),
);

create table orders(
	order_id INT PRIMARY KEY,
	product_id INT,
	customer_id INT,
	CONSTRAINT clec FOREIGN KEY (customer_id) REFERENCES client(customer_id),
	CONSTRAINT clep FOREIGN KEY (product_id) REFERENCES product (product_id),
	quantity INT,
	date_de_commande DATE,
);
