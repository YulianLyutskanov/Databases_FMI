SELECT T1.NAME
FROM MOVIEEXEC AS T1,(SELECT NAME FROM MOVIESTAR WHERE GENDER = 'F') AS T2
WHERE T1.NAME = T2.NAME AND T1.NETWORTH > 10000000


SELECT NAME
FROM MOVIESTAR
WHERE MOVIESTAR.NAME  NOT IN (SELECT NAME FROM MOVIEEXEC)


SELECT TITLE
FROM MOVIE
WHERE MOVIE.LENGTH > (SELECT LENGTH FROM MOVIE WHERE TITLE = 'Star Wars')


SELECT MOVIE.TITLE, MOVIEEXEC.NAME
FROM MOVIE, MOVIEEXEC
WHERE MOVIE.PRODUCERC# = MOVIEEXEC.CERT# AND 
	  MOVIEEXEC.NETWORTH > (SELECT NETWORTH FROM MOVIEEXEC WHERE NAME = 'Merv Griffin')
