(SELECT nev FROM szeret WHERE gyumolcs = 'dinnye' UNION SELECT nev FROM szeret WHERE gyumolcs = 'körte')
MINUS
(SELECT nev FROM szeret WHERE gyumolcs = 'dinnye' INTERSECT SELECT nev FROM szeret WHERE gyumolcs = 'körte');

--f1:8
/*elnevezes: SELECT t.*,t.nev FROM szeret t;*/
/*direkt szorzat: SELECT * FROM szeret s1, szeret s2;*/
--SELECT nev FROM szeret GROUP BY nev HAVING COUNT(gyumolcs) > 1;
SELECT DISTINCT s1.nev 
FROM szeret s1, szeret s2 
WHERE s1.nev = s2.nev AND s1.gyumolcs != s2.gyumolcs;

SELECT foglalkozas
FROM dolgozo
MINUS
SELECT DISTINCT d1.foglalkozas
FROM dolgozo d1, dolgozo d2
WHERE d1.foglalkozas = d2.foglalkozas AND d1.dnev != d2.dnev;

SELECT *
FROM dolgozo
where nvl(jutalek, 0) < 200;