(SELECT STARNAME AS NAME 
FROM STARSIN 
WHERE MOVIETITLE = 'The Usual Suspects')
INTERSECT
(SELECT NAME 
FROM MOVIESTAR
WHERE GENDER = 'M')


SELECT STARNAME
FROM MOVIE, STARSIN
WHERE YEAR = 1995 AND STUDIONAME = 'MGM' AND TITLE = MOVIETITLE


SELECT DISTINCT NAME
FROM MOVIE, MOVIEEXEC
WHERE STUDIONAME = 'MGM' AND PRODUCERC# = CERT# 


SELECT T2.TITLE
FROM MOVIE AS T1, MOVIE AS T2
WHERE  T1.TITLE = 'Star Wars' AND T1.LENGTH < T2.LENGTH


SELECT T2.NAME
FROM MOVIEEXEC AS T1, MOVIEEXEC AS T2
WHERE T1.NAME = 'Stephen Spielberg' AND T1.NETWORTH < T2.NETWORTH
