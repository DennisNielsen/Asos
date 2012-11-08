CREATE DATABASE ASOSdb;

USE ASOSdb;

CREATE TABLE customer
	(
		customerId INT(5), 
			firstName VARCHAR (30),
			lastName VARCHAR (30),
			bDay DATE,
			gender VARCHAR (10), 
			email VARCHAR (50), 		
		zipcode INT (25),		
		streetName VARCHAR (35),
			country VARCHAR(35)		
	);

CREATE TABLE product
	(
		productId INT(5), 
		productName VARCHAR (50),		
		brandId INT(5), 
		categoryId INT(5),
		price FLOAT,		
			UnitsInStock INT(5)			
		);


CREATE TABLE category
	(
			categoryId INT(5),
			catName VARCHAR (35)			
	);

CREATE TABLE brand
	(
			brandId INT(5),
			brandName VARCHAR (35)			
	);

CREATE TABLE ordertable
	(
		orderId INT(5),
			customerId INT(5),
			orderDate TIMESTAMP,			
			PRIMARY KEY (orderId)		
	);	


USE ASOSdb;

CREATE TABLE orderItems

	(
		orderId INT(5),
		productId INT(5),
		qty INT(5),
		price FLOAT,
		
		PRIMARY KEY (orderId, productId)
		
	);

ALTER TABLE customer ADD PRIMARY KEY (customerId);
ALTER TABLE product ADD PRIMARY KEY (productId);
ALTER TABLE category ADD PRIMARY KEY (categoryId);
ALTER TABLE brand ADD PRIMARY KEY (brandId);


ALTER TABLE ordertable ADD CONSTRAINT FK_CustomerId FOREIGN KEY (customerId) REFERENCES customer (customerId);
ALTER TABLE orderitems ADD CONSTRAINT FK_ProductId FOREIGN KEY (productId) REFERENCES product (productId);
ALTER TABLE orderitems ADD CONSTRAINT FK_OrderId FOREIGN KEY (orderId) REFERENCES ordertable (orderId);
ALTER TABLE product ADD CONSTRAINT FK_BrandId FOREIGN KEY (brandId) REFERENCES brand (brandId);
ALTER TABLE product ADD CONSTRAINT FK_categoryId FOREIGN KEY (categoryId) REFERENCES category (categoryId);





