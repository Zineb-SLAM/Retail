/*INSERT INTO Client 
	VALUES 	(1,'Pierre','Dupont','1980-02-01',9,'rue de Paris', 75019,'Paris','France'),
		(2,'Elizabeth','Simon','1974-09-06-',6,'rue Edouard Dubloc', 44932,'Nantes','France'),
		(3,'Emilie','Martin','1980-07-11',8,'rue Philippe', 75019,'Paris','France'),
		(4,'Paul','Pierre','1992-11-04',12,'rue Carrefour', 69436,'Lyon','France'),
		(5,'Kevin','Dubois','1960-02-21-',7,'rue la Fontaine', 75019,'Paris','France'),
		(6,'Arthur','Pierre','1988-12-05',13,'rue de Paris',75019,'Paris','France'),
		(7,'Chloe','Chevre','1990-10-28',8,'rue Clairoix',75019,'Paris','France'),	
		(8,'Loic','Lamaison','1981-02-10',4,'rue Pierre Sauvage',33053,'Bordeaux','France'),
		(9,'Nicolas','Stuart','1983-03-03',2,'rue de Paris', 75019,'Paris','France'),
		(10,'Claire','Lachance','1984-03-30',1,'rue Limoge', 75019,'Paris','France'),
		(11,'Nazek','Lachance','1979-08-02',1,'rue Limoge', 35030,'Rennes','France'),
		(12,'whoever','Iam','1993-07-02',1,'rue street', 30100,'Perpignan','France');*/

/*INSERT INTO Magasin 
	VALUES(1,'80 Quartier du Lac 33053 Bordeaux'),
		(2,'2 place de Bretagne 44932 Nantes'),
		(3,'236 rue de Châteaugiron 35030 Rennes'),
		(4,'26 rue d’Aubigny 69436 Lyon'),
		(5,'19 place de l’Argonne 75019 PARIS');*/

/*Fournisseur (id,nom)*/
/*INSERT INTO Fournisseur 
	VALUES (1,'KUI'),
		(2,'COOP'),
		(3,'Deli');*/

/*Domaine (code,description)*/
/*INSERT INTO Domaine
	VALUES  (1,'Aliment'),
		(2,'Vêtement'),
		(3,'Produit Menager'),
		(4,'Produit de Beaute');*/

/*Groupe  (code,code_domaine, description)*/
/*INSERT INTO Groupe
	VALUES (11,1,'surgele'),
 		(12,2,'conserve'),
 		(21,2,'Homme'),
 		(22,2,'Femme'),
 		(23,2,'Enfant');*/



/* Sous-groupe (code,groupe,description)*/
/*INSERT INTO Sous_groupe
	VALUES (111,11,'pizza'),
		(112,11,'glaces'),
		(113,11,'legumes'),
		(121,12,'thon'),
		(122,12,'Mais'),
		(123,12,'champignons'),
		(211,21,'Chemises'),
		(212,21,'Pantalons'),
		(221,22,'Robes'),
		(222,22,'lingerie'),
		(231,23,'Pyjamas');*/

/*Article (code,date_code,Sous_groupe,fournisseur)*/ 
/*INSERT INTO Article
	VALUES (1,'2014-12-27',111,3),
		(2,'2014-12-27',111,2),
		(3,'2014-12-27',112,3),
		(4,'2014-12-27',112,1),
		(5,'2014-12-27',211,3),
		(6,'2014-12-27',222,3),
		(7,'2014-12-27',113,1),
		(8,'2014-12-27',122,1),
		(9,'2014-12-27',211,3),
		(10,'2015-05-07',121,1),
		(11,'2015-05-07',123,2);*/
/*(1,'2015-05-07',111,3),(2,'2015-05-07',111,2),*/


/*Prix (date_prix,article,prix_fourniseur,prix_vente)*/
/*INSERT INTO Prix
	VALUES ('2014-12-27',1,3,3.50),
		('2014-12-27',2,6.80,7.90),
		('2014-12-27',3,3.20,5),
		('27-12-2014',4,4,4.60),
		('2014-12-27',5,23,27),
		('2014-12-27',6,21,25),
		('2014-12-27',7,0.50,1.70),
		('2014-12-27',8,0.90,1.20),
		('2014-12-27',9,28,32),
		('2015-02-27',1,3.02,3.55),
		('2015-05-07',2,6.85,8),
		('2015-05-07',10,0.82,1.54),
		('2015-05-07',11,0.71,1.25);*/


/*Description (date_desc,article,description)*/
/*INSERT INTO Description
	VALUES ('2014-12-27',1,'XXXXXXXX'),
		('2015-05-07',11,'YYYYY');*/


/*Stock (article_code,magasin_id,quantite)*/
/*INSERT INTO Stock
	VALUES (1,2,320),
		(3,1,400),
		(2,1,780),
		(1,4,900),
		(3,5,675),
		(5,1,1400),
		(1,3,500),
		(11,5,500),
		(10,5,500),
		(7,5,500);*/


/*Livraison (id,magasin_id,fournisseur_id,date_commande,date_livraison)*/
/*INSERT INTO Livraison
	VALUES (1,1,2,'2015-02-12','2015-03-20'),
		(2,1,2,'2015-02-12','2015-04-12'),
		(3,2,1,'2014-12-28','2015-01-25'),
		(4,3,3,'2015-01-03','2015-02-25'),
		(5,3,2,'2015-03-18','2015-03-21'),
		(6,2,1,'2015-04-07','2015-05-10'),
		(7,1,1,'2015-05-05','2015-05-10');*/

/*Contenu (code_article,livraison_id,quantite_article)*/
/*INSERT INTO Contenu
	VALUES (2,1,300),
		(10,2,400),
		(5,3,150),
		(2,4,900),
		(4,5,250),
		(7,6,410),
		(3,7,560);*/


/*Achat (id,magasin_id,client_id,mode_paiement,date_achat,caisse)*/
INSERT INTO Achat
 VALUES (1,2,12,'espece','2014-12-04 09:10:34',3),
	(2,3,5,'CarteBancaire','2015-02-24 20:15:00',4),
	(3,5,12,'CarteBancaire','2015-05-04 14:58:02',1);

/*Achat_Article (code_article,achat_id,quantite) */
INSERT INTO Achat_Article
	VALUES (8,3,3),
		(5,1,1),
		(10,1,2),
		(2,1,8),
		(5,2,50);






