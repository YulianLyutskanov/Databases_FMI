SELECT maker, speed
FROM laptop, product
WHERE laptop.model = product.model AND hd > 9  

(SELECT product.model, price
FROM product, laptop
WHERE laptop.model = product.model AND MAKER = 'B')
UNION
(SELECT product.model, price
FROM product, pc
WHERE pc.model = product.model AND MAKER = 'B')
UNION
(SELECT product.model, price
FROM product, printer
WHERE printer.model = product.model AND maker = 'B')


(SELECT maker
FROM product
WHERE type = 'Laptop')
EXCEPT
(SELECT maker
FROM product
WHERE type = 'PC')

SELECT DISTINCT T1.HD
FROM PC AS T1, PC AS T2
WHERE T1.HD = T2.HD AND T1.CODE != T2.CODE


SELECT T1.MODEL, T2.MODEL
FROM PC AS T1, PC AS T2
WHERE T1.HD = T2.HD AND 
	  T1.SPEED = T2.SPEED AND 
	  T1.MODEL < T2.MODEL;


(SELECT MAKER
FROM PRODUCT, PC
WHERE PRODUCT.MODEL = PC.MODEL AND PC.SPEED >= 400)
--EXCEPT ALL doesnt work on SQL Server
--(SELECT DISTINCT MAKER
--FROM product)