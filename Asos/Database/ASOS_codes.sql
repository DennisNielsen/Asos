
--Hvis man gerne vil opdatere et felt --
USE ASOSdb;

UPDATE customer
SET firstName ='Mark'
WHERE customerId = '1'



--Hvis man gerne vil regne total prisen ud, fra en bestem order, i dette tilfælde order nummer "1"--
USE ASOSdb;	
	
	SELECT 
	
			orderitems.orderId,  
			ordertable.customerId,
			orderitems.productId,  
			orderitems.qty, 
			orderitems.price, 
			(orderitems.qty * orderitems.price) AS 'Total' 
			
	FROM ordertable, orderitems 
	WHERE ordertable.orderId = orderitems.orderId
	AND orderitems.orderId = 1
	