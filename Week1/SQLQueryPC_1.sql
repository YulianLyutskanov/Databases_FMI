SELECT MODEL, SPEED AS MHz, HD AS GB
FROM PC
WHERE price < 1200


SELECT DISTINCT maker
FROM PRODUCT
WHERE type = 'Printer'


SELECT model, ram, screen
FROM laptop
WHERE price > 1000


SELECT *
FROM printer
WHERE COLOR='y'


SELECT model, speed AS MHz, HD AS GB
FROM pc
WHERE price < 2000 AND cd = '12x' OR cd = '16x'