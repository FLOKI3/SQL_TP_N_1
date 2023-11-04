--1. Cr�er une base de donn�es � GestEmployes �
CREATE DATABASE FLOKI 

--2. Cr�er la table Employes (ID,Nom,Age,Salaire)
CREATE TABLE GestEmployes(
	ID int PRIMARY KEY,
	Nom varchar(30),
	Age int,
	Salaire int,
)

--3. Ins�rer les enregistrements (n-uplets) suivants
INSERT INTO GestEmployes(ID,Nom,Age,Salaire)
			VALUES(1,'Ismail',25,6000.00)
INSERT INTO GestEmployes(ID,Nom,Age,Salaire)
			VALUES(2,'Mahmed',30,8000.00)
INSERT INTO GestEmployes(ID,Nom,Age,Salaire)
			VALUES(3,'Fatima',29,6000.00)
INSERT INTO GestEmployes(ID,Nom,Age,Salaire)
			VALUES(4,'Dounia',31,9000.00)
INSERT INTO GestEmployes(ID,Nom,Age,Salaire)
			VALUES(5,'Omar',30,7500.00)

--4. Incr�menter de 1 l��ge de tous les employ�s
Update GestEmployes
SET Age = Age - 1

--5. Enlever 500 du salaire de l�employ� � Omar �
Update GestEmployes
SET Salaire = Salaire - 500
WHERE Nom = 'Omar'

--6. Supprimer l�employ� dont le nom est IsmailDELETE FROM GestEmployes
WHERE nom = 'Ismail';

--7. Supprimer tous les employ�s
DELETE FROM GestEmployes;

--8. R�ins�rer tous les employ�s pr�c�dents

--9. Donner les requ�tes qui retournent :
--a) La liste de tous les employ�s
SELECT * FROM GestEmployes

--b) Uniquement les noms et �ges de tous les employ�s
SELECT Age,Nom FROM GestEmployes

--c) Le nom et un champ appel� � Age apr�s 10 ans � de tous les employ�s.
SELECT Nom,Age+10 as "Age apr�s 10 ans"
FROM GestEmployes

--d) Les champs Id, Nom et Salaire de la table Employes, dont le Salaire est inf�rieur ou �gal � 7500.
SELECT ID,Nom,Salaire
FROM GestEmployes
WHERE Salaire<=7500

--e) Les champs Id et Nom de la table Employes, o� le l'Age de l'employ� est entre 26 et 30
SELECT ID,Nom
FROM GestEmployes
WHERE Age between 26 and 30 

--f) L��ge de l�employ� dont le nom est "Dounia"SELECT Age
FROM GestEmployes
WHERE Nom = 'Dounia'

--g) Liste des employ�s dont le Salaire est sup�rieur � 7600 et l��ge compris entre 26 et 31 ans
SELECT Salaire,Age
FROM GestEmployes
WHERE Salaire>7600 and Age between 26 and 31

--h) Les champs Id et Nom de la table Employes, o� le Salaire est sup�rieur ou �gal � 9000 OU l��ge est entre 25 et 29 ans.
SELECT ID,Nom
FROM GestEmployes
WHERE Salaire>=9000 or Age between 25 and 29

--i) Tous les employ�s dont les noms commencent par �Is�SELECT *
FROM GestEmployes
WHERE Nom LIKE 'Is%'

--j) Tous les employ�s dont les noms se terminent par �d�
SELECT *
FROM GestEmployes
WHERE Nom LIKE 'd%'

--k) Tous les employ�s dont les noms contient par �m�
SELECT *
FROM GestEmployes
WHERE Nom LIKE '%m%'

--l) Tous les employ�s dont la troisi�me lettre du nom vaut �h�
SELECT *
FROM GestEmployes
WHERE Nom LIKE '__h%'

--m) Tous les employ�s dont le nom contient uniquement quatre caract�res dont l�avant dernier est �a�
SELECT *
FROM GestEmployes
WHERE Nom LIKE '__a_'

--n) Afficher la liste des employ�s par ordre croissant de leurs �gesSELECT *
FROM GestEmployes
ORDER BY Age asc

--o) Afficher la liste des employ�s par ordre croissant de leurs �ges puis par ordre d�croissant de leurs nomsSELECT *
FROM GestEmployes
ORDER BY Age asc , Nom desc

--p) Le nombre d�employ�s
SELECT COUNT(*) as Nombre_d_employ�s
FROM GestEmployes

--q) Le nombre de cat�gories d��ge

--r) La somme des �ges de tous les employ�sSELECT SUM (Age) as La_somme_des_�ges
FROM GestEmployes

--s) La somme des diff�rents �ges de la table Employes, (sans doublons)

--t) La somme des salaires des employ�s
SELECT SUM (Salaire) as La_somme_des_salaires
FROM GestEmployes

--u) Le salaire moyen de la table Employes
SELECT AVG(Salaire) as Salaire_moyen
FROM GestEmployes

--v) L��ge moyen des employ�sSELECT AVG(Age) as Age_moyen
FROM GestEmployes

--w) Le salaire minimum de la table Employes
SELECT MIN(Salaire) as Salaire_minimum
FROM GestEmployes

--x) L��ge maximum de la table Employes
SELECT MAX(Age) as Age_maximum
FROM GestEmployes

--y) La moyenne d��ge des employ�s ayant un salaire sup�rieur � 7000
SELECT AVG(Age) as Moyenne_d_�ge_ayant_un_salaire_sup�rieur_�_7000
FROM GestEmployes
WHERE Salaire>7000
