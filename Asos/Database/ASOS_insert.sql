USE ASOSdb;

INSERT INTO customer 
	(customerId, firstName, lastName, bDay, gender, email, zipcode, streetName, country) 
VALUES
	(1,'Marc', 'Beckham', '1983-09-10', 'Male', 'marc_badboy83@gmail.com', 602285, 'Abchurch Lane 10', 'UK'),
	(2,'Ida', 'Svenson', '1990-07-20', 'Female', 'Ida_Muzz@msn.se', 31337, 'Lyndeberg 55', 'SE'),
	(3,'Frederik', 'Nørgård', '1991-03-16', 'Male', 'frederik.norgard@facebook.com', 2840, 'Whiskeybæltet 3', 'DK'),
	(4, 'Helle', 'Christensen', '1988-09-30', 'female', 'Hellebas@hotmail.com', 2200,  'Bragesgade 5, 3 th', 'DK'),
	(5, 'Daniel', 'Pleatner-Cancela', '1989-12-24', 'male', 'danielplaetner@gmail.com', 2840, 'Bakkevej 18B', 'DK'),
	(6,'Dennis Martin', 'Fjeldsted Nielsen', '1990-08-20', 'male', 'Dennisnielsen@hotmail.com', 3400, 'Jørgen Poulsens Have 34', 'DK'),
	(7, 'Thomas', 'Laursen', '1990-04-10', 'male', 'Stærkfyr@bondemand.dk', 9900, 'Kotorvet 3b', 'DK'),
	(8, 'Kristoffer', 'Jessen', '1988-12-26', 'male', 'R0ckStaR_Poppe@Rockandroll.com', 2300, 'Alligatorvænget 1', 'DK'),
	(9, 'Louise', 'Witzansky', '1990-07-22', 'female', 'Louises_fotos@Iwillsnapyou.dk', 2300, 'Fotevej 25', 'DK'),
	(10,'Katja', 'Trollerup', '1985-11-08', 'female', 'Dinpony@hotmail.com', 3300, 'Bondevej 29', 'DK');


INSERT INTO category
	(categoryId, catName)
VALUES
	(1,'ASOS'),
	(2,'Paul Smith'),
	(3,'Socks & Tights'),
	(4,'G STAR'),
	(5,'Mango'),
	(6,'Vera Moda'),
	(7,'Hearts & Bows'),
	(8,'Martine Rose'),
	(9,'River Island'),
	(10,'Batise'),
	(11,'SPEEDO'),
	(12,'Skirt'),
	(13,'Shirt');
	
INSERT INTO brand
	(brandId, brandName)
VALUES
	(1,'Pants'),
	(2,'Bag'),
	(3,'DIESEL'),
	(4,'Beauty/Hair'),
	(5,'Dresses'),
	(6,'Suits & blazers'),
	(7,'Jeans'),
	(8,'Shoes'),
	(9,'Accessories'),
	(10,'Jackets & Coats'),
	(11,'Swimwear'),
	(12,'Skirts'),
	(13,'T-shirts & Vests');
	
	
INSERT INTO product 
	(productId, productName, brandId, categoryId, price, UnitsInStock) 
VALUES
	(1, 'Paul Smith Slim Fit Chino', 2, 1, 1178.25, 112),
	(2, 'Diesel Rucksack Tyler', 3, 2, 1227.65, 65),
	(3, 'ASOS 80 Denier Black Tights', 1, 3, 59.45, 766),
	(4, 'Batiste Dry Shampoo Medium 200ml', 10, 4, 39.55, 245),
	(5, 'ASOS Skater Dress with Embellished Collar', 1, 5, 643.55, 25),
	(6, 'ASOS Slim Fit Stripe Blazer in Italian Fabric', 1, 6, 841, 120),
	(7, 'River Island Skinny Vinny Jeans', 9, 7, 247, 400),
	(8, 'Mango Leather Look Waistband Jean', 5,7 , 445, 320),
	(9, 'ASOS PUSH IT Platforms', 1, 8, 297, 50),
	(10, 'ASOS Retro Sunglasses', 1, 9, 118, 650),
	(11, 'G Star Leather Jacket', 4, 10, 3910, 15),
	(12, 'Speedo Logo Brief',11,11, 217, 250),
	(13, 'Hearts & Bows Galactic Print Skirt', 7, 12, 247, 400),
	(14, 'Martine Rose For ASOS Badges Crop T-Shirt',8, 13, 297, 145),
	(15, 'Vero Moda Shirt Dress', 6, 5, 99, 632);



INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('1','2');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('1','4','2','39.55');


	
	
INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('2','1');	
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('2','11','2','3910'),
	('2','12','1','217');
	
	
	
INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('3','3');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('3','12','10','217'),
	('3','13','1','297');
	

	
INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('4','6'),
	('5','6');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('4','1','1','1178.25'),
	('4','2','2','1227.65'),
	('5','12','5','217'),
	('5','14','1','297'),
	('5','4','3','39.55');
	

	
INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('6','10');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('6','7','1','247');

	

INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('7','7');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('7','6','1','841'),
	('7','9','1','297');


INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('8','4'),
	('9','4');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('8','5','1','643.55'),
	('9','15','1','99');
	

	
INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('10','9');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('10','12','1','217');
	

	
INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('11','9');
INSERT INTO orderItems
	(orderId, productId, qty, price) 
VALUES
	('11','6','1','841'),
	('11','10','1','118');
	

INSERT INTO orderTable
	(orderId, customerId)
VALUES
	('12','9');
INSERT INTO orderItems
	(orderId, productId, qty, price)
VALUES
	('12','2','1','1227.65'),
	('12','4','15','39.55'),
	('12','9','1','297'),
	('12','12','3','217');
	