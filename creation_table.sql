/*CODE SQL DE CREATION DE TABLE*/
CREATE TABLE Fournisseur(
id integer UNIQUE,
nom VARCHAR,
PRIMARY KEY (id));

CREATE TABLE Domaine (
code integer  UNIQUE, 
description VARCHAR,
PRIMARY KEY(Code));

CREATE TABLE Groupe ( 
code integer  UNIQUE, 
code_domaine integer NOT NULL, 
description VARCHAR, 
PRIMARY KEY (code,code_domaine), 
FOREIGN KEY (code_domaine) REFERENCES Domaine(code) ON DELETE CASCADE);

CREATE TABLE Sous_groupe(
code integer NOT NULL UNIQUE, 
groupe integer NOT NULL, 
description VARCHAR, 
PRIMARY KEY(code,groupe), 
FOREIGN KEY (groupe) REFERENCES Groupe(code)ON DELETE CASCADE);

CREATE table Article(
code integer UNIQUE, 
date_code Date, 
sousgroupe integer NOT NULL,
fournisseur integer NOT NULL,
CHECK (code<100000),
PRIMARY KEY(code,date_code),
FOREIGN KEY (sousgroupe) REFERENCES Sous_groupe(code),
FOREIGN KEY (fournisseur) REFERENCES Fournisseur(id));

CREATE TABLE Client (
id integer, 
nom VARCHAR(20),
prenom VARCHAR(20),
date_naissance Date,
adresse_num integer,
adresse_rue VARCHAR,
adresse_cp integer,
ville VARCHAR,
pays VARCHAR,
PRIMARY KEY (id));


CREATE TABLE Prix( /* ON NE PEUT AJOUTER DEUX PRIX DU MEME ARTICLE AU MEME TEMPS*/
date_prix TIMESTAMP,
article integer,
prix_fournisseur float,
prix_vente float NOT NULL,
PRIMARY KEY(date_prix,article),
FOREIGN KEY (article) REFERENCES Article(code));

CREATE TABLE Description(
date_desc Date,
article integer,
description VARCHAR,
PRIMARY KEY (date_desc),
FOREIGN KEY (article) REFERENCES Article(code));

CREATE TABLE Magasin(
id integer,
adresse VARCHAR,
PRIMARY KEY(id));

CREATE TABLE Stock (
article_code integer,
magasin_id integer NOT NULL,
quantite integer,
PRIMARY KEY (article_code,magasin_id),
FOREIGN KEY (article_code) REFERENCES Article(code),
FOREIGN KEY (magasin_id) REFERENCES Magasin(id));

CREATE TABLE Livraison(
id integer,
magasin_id integer NOT NULL,
fournisseur_id integer NOT NULL,
date_commande Date,
date_livraison Date,
CHECK (date_commande< date_livraison),
PRIMARY KEY (id),
FOREIGN KEY (magasin_id) REFERENCES Magasin(id),
FOREIGN KEY (fournisseur_id) REFERENCES Fournisseur(id)); 

CREATE TABLE Contenu (
code_article integer,
livraison_id integer NOT NULL,
quantite_article integer NOT NULL,
PRIMARY KEY (code_article,livraison_id),
FOREIGN KEY (code_article) REFERENCES Article(code),
FOREIGN KEY (livraison_id) REFERENCES Livraison(id));

/*PROJ(Article, code) IN PROJ(Contenu,Code_Article)*/
/*Select A.code, C.code_article FROM Article A, Contenu C WHERE C.code_article = A.code*/

CREATE TABLE Achat(
id integer,
magasin_id integer NOT NULL, 
client_id integer,
mode_paiement VARCHAR NOT NULL,
date_achat TIMESTAMP,
caisse integer NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (magasin_id) REFERENCES Magasin(id),
FOREIGN KEY (client_id) REFERENCES Client(id) ON DELETE CASCADE);

CREATE TABLE Achat_article (
code_article integer NOT NULL,
achat_id integer NOT NULL, 
quantite integer NOT NULL,
PRIMARY KEY (code_article, Achat_id),
FOREIGN KEY (code_article)REFERENCES Article(code),
FOREIGN KEY (achat_id )REFERENCES Achat(id));

/*PROJ(Achat, id) IN PROJ(Achat_Article, Achat_id)
Select A.id , Ach.achat_id FROM Achat A, Achat_Article AA WHERE A.id=Ach.achat_id)*/




