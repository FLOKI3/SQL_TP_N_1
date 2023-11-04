--1. Créer une base de données « GestEmployes »
CREATE DATABASE GestEmployes 

--2. Créer la table Employes (ID,Nom,Age,Salaire)
CREATE TABLE GestEmployes(
	ID int PRIMARY KEY,
	Nom varchar(30),
	Age int,
	Salaire int,
)

--3. Insérer les enregistrements (n-uplets) suivants
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

--4. Incrémenter de 1 l’âge de tous les employés
Update GestEmployes
SET Age = Age - 1

--5. Enlever 500 du salaire de l’employé « Omar »
Update GestEmployes
SET Salaire = Salaire - 500
WHERE Nom = 'Omar'

--6. Supprimer l’employé dont le nom est Ismail
DELETE FROM GestEmployes
WHERE nom = 'Ismail';

--7. Supprimer tous les employés
DELETE FROM GestEmployes;

--8. Réinsérer tous les employés précédents

--9. Donner les requêtes qui retournent :
--a) La liste de tous les employés
SELECT * FROM GestEmployes

--b) Uniquement les noms et âges de tous les employés
SELECT Age,Nom FROM GestEmployes

--c) Le nom et un champ appelé « Age après 10 ans » de tous les employés.
SELECT Nom,Age+10 as "Age après 10 ans"
FROM GestEmployes

--d) Les champs Id, Nom et Salaire de la table Employes, dont le Salaire est inférieur ou égal à 7500.
SELECT ID,Nom,Salaire
FROM GestEmployes
WHERE Salaire<=7500

--e) Les champs Id et Nom de la table Employes, où le l'Age de l'employé est entre 26 et 30
SELECT ID,Nom
FROM GestEmployes
WHERE Age between 26 and 30 

--f) L’âge de l’employé dont le nom est "Dounia"
SELECT Age
FROM GestEmployes
WHERE Nom = 'Dounia'

--g) Liste des employés dont le Salaire est supérieur à 7600 et l’âge compris entre 26 et 31 ans
SELECT Salaire,Age
FROM GestEmployes
WHERE Salaire>7600 and Age between 26 and 31

--h) Les champs Id et Nom de la table Employes, où le Salaire est supérieur ou égal à 9000 OU l’âge est entre 25 et 29 ans.
SELECT ID,Nom
FROM GestEmployes
WHERE Salaire>=9000 or Age between 25 and 29

--i) Tous les employés dont les noms commencent par ‘Is’
SELECT *
FROM GestEmployes
WHERE Nom LIKE 'Is%'

--j) Tous les employés dont les noms se terminent par ‘d’
SELECT *
FROM GestEmployes
WHERE Nom LIKE 'd%'

--k) Tous les employés dont les noms contient par ‘m’
SELECT *
FROM GestEmployes
WHERE Nom LIKE '%m%'

--l) Tous les employés dont la troisième lettre du nom vaut ‘h’
SELECT *
FROM GestEmployes
WHERE Nom LIKE '__h%'

--m) Tous les employés dont le nom contient uniquement quatre caractères dont l’avant dernier est ‘a’
SELECT *
FROM GestEmployes
WHERE Nom LIKE '__a_'

--n) Afficher la liste des employés par ordre croissant de leurs âges
SELECT *
FROM GestEmployes
ORDER BY Age asc

--o) Afficher la liste des employés par ordre croissant de leurs âges puis par ordre décroissant de leurs noms
SELECT *
FROM GestEmployes
ORDER BY Age asc , Nom desc

--p) Le nombre d’employés
SELECT COUNT(*) as Nombre_d_employés
FROM GestEmployes

--q) Le nombre de catégories d’âge

--r) La somme des âges de tous les employés
SELECT SUM (Age) as La_somme_des_âges
FROM GestEmployes

--s) La somme des différents âges de la table Employes, (sans doublons)

--t) La somme des salaires des employés
SELECT SUM (Salaire) as La_somme_des_salaires
FROM GestEmployes

--u) Le salaire moyen de la table Employes
SELECT AVG(Salaire) as Salaire_moyen
FROM GestEmployes

--v) L’âge moyen des employés
SELECT AVG(Age) as Age_moyen
FROM GestEmployes

--w) Le salaire minimum de la table Employes
SELECT MIN(Salaire) as Salaire_minimum
FROM GestEmployes

--x) L’âge maximum de la table Employes
SELECT MAX(Age) as Age_maximum
FROM GestEmployes

--y) La moyenne d’âge des employés ayant un salaire supérieur à 7000
SELECT AVG(Age) as Moyenne_d_âge_ayant_un_salaire_supérieur_à_7000
FROM GestEmployes
WHERE Salaire>7000
