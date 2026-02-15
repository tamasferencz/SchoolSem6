--Task 1
/*1*/SELECT dnev,fizetes FROM dolgozo WHERE fizetes > 2800;
/*2*/SELECT dnev,oazon FROM dolgozo WHERE oazon = 10 OR oazon = 20;
/*3*/SELECT dnev,jutalek FROM dolgozo WHERE jutalek > 600;
/*4*/SELECT dnev,jutalek FROM dolgozo WHERE jutalek <= 600;
/*5*/SELECT dnev, jutalek FROM dolgozo WHERE jutalek IS NULL;
/*6*/SELECT DISTINCT foglalkozas FROM dolgozo;
/*7*/SELECT dnev,fizetes,fizetes*2 FROM dolgozo WHERE oazon = 10;
/*8*/SELECT dnev, belepes FROM dolgozo WHERE belepes > TO_DATE('1982.01.01','YYYY.MM.DD'); 
/*9*/SELECT dnev,fonoke FROM dolgozo WHERE fonoke IS NULL;
/*10*/SELECT dnev FROM dolgozo WHERE dnev LIKE '%A%';
/*11*/SELECT dnev FROM dolgozo WHERE dnev LIKE '%L%L%';
/*12*/SELECT dnev,fizetes FROM dolgozo WHERE fizetes >= 2000 AND fizetes <= 3000;
/*13*/SELECT * FROM dolgozo ORDER BY fizetes ASC;
/*14*/SELECT * FROM dolgozo ORDER BY fizetes DESC, dnev ASC;
/*15*/SELECT dnev FROM dolgozo WHERE fonoke = 7839;

--Task2
/*1*/SELECT gyumolcs FROM szeret WHERE nev = 'Micimackó';
/*2*/SELECT gyumolcs FROM szeret MINUS SELECT gyumolcs FROM szeret WHERE nev = 'Micimackó';
/*3*/SELECT nev FROM szeret WHERE gyumolcs = 'alma';
/*4*/SELECT nev,gyumolcs FROM szeret MINUS SELECT nev,gyumolcs FROM szeret WHERE gyumolcs = 'körte';
/*5*/SELECT DISTINCT nev FROM szeret WHERE gyumolcs = 'dinnye' OR gyumolcs = 'körte';
/*6*/SELECT nev FROM szeret WHERE gyumolcs = 'alma' INTERSECT SELECT nev FROM szeret WHERE gyumolcs = 'körte';
/*7*/SELECT nev FROM szeret WHERE gyumolcs = 'alma' MINUS SELECT nev FROM szeret WHERE gyumolcs = 'körte';