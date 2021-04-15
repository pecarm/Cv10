SELECT *
FROM Studenti
LEFT JOIN Predmety_studentu ON Studenti.ID = Predmety_studentu.ID_studenta
ORDER BY Studenti.ID;

SELECT Prijmeni,
	COUNT(ID) AS Pocet_studentu
FROM Studenti
GROUP BY Prijmeni
ORDER BY COUNT(ID) DESC;

SELECT Zkratka
FROM Predmety_studentu
GROUP BY Zkratka
HAVING COUNT(ID_studenta) < 3;

SELECT Zkratka, 
	MIN(Znamka) AS Nejlepsi_hodnoceni,
	MAX(Znamka) AS Nejhorsi_hodnoceni,
	AVG(Znamka) AS Prumerne_hodnoceni,
	COUNT(ID_studenta) AS Pocet_studentu
FROM Hodnoceni
GROUP BY Zkratka