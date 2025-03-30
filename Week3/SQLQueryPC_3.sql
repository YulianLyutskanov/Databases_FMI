SELECT MAKER
FROM PRODUCT
WHERE TYPE = 'PC' AND MODEL IN (SELECT MODEL FROM PC WHERE SPEED > 500 )


SELECT CODE, MODEL, PRICE
FROM PRINTER
WHERE PRICE = (SELECT TOP 1 PRICE FROM PRINTER ORDER BY PRICE DESC)


SELECT *
FROM LAPTOP
WHERE SPEED < ALL (SELECT SPEED FROM PC)


SELECT TOP 1 T1.MODEL, T1.PRICE
FROM ((SELECT PRICE, MODEL FROM PRINTER) UNION
	 (SELECT PRICE, MODEL FROM LAPTOP) UNION
	 (SELECT PRICE, MODEL FROM PC)) AS T1
ORDER BY PRICE DESC


SELECT MAKER
FROM PRODUCT,(SELECT MODEL, PRICE
			  FROM PRINTER
			  WHERE PRICE <= (SELECT TOP 1 PRICE FROM PRINTER WHERE COLOR = 'y') AND COLOR = 'y') AS T2
WHERE PRODUCT.MODEL = T2.MODEL


SELECT MAKER
FROM PRODUCT,(SELECT MODEL
			  FROM (SELECT * FROM PC WHERE RAM <= ALL(SELECT RAM FROM PC)) AS T1
			  WHERE T1.SPEED >= ALL (SELECT SPEED FROM PC WHERE RAM <= ALL(SELECT RAM FROM PC))) AS T1
WHERE PRODUCT.MODEL = T1.MODEL



