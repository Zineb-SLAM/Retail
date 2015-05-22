/*Table Client*/
id,nom,prenom,date_naissance,adresse_num,adresse_rue,adresse_cp,ville,pays
1,Pierre,Dupont,02-011-980,9,rue de Paris, 75019,Paris,France
2,Elizabeth,Simon,29-06-1974,6,rue Edouard Dubloc, 44932,Nantes,France
3,Emilie,Martin,07-11-1980,8,rue Philippe, 75019,Paris,France
4,Paul,Pierre,16-04-1992,12,rue Carrefour, 69436,Lyon,France
5,Kevin,Dubois,02-01-1960,7,rue la Fontaine, 75019,Paris,France
6,Arthur,Pierre,12-05-1988,13,rue de Paris,75019,Paris,France
7,Chloe,Chevre,21-08-1990,8,rue Clairoix,75019,Paris,France
8,Loic,Lamaison,02-10-1981,4,rue Pierre Sauvage,33053,Bordeaux,France
9,Nicolas,Stuart,03-03-1983,2,rue de Paris, 75019,Paris,France
10,Claire,Lachance,30-03-1984,1,rue Limoge, 75019,Paris,France
11,Nazek,Lachance,08-02-1979,1,rue Limoge, 35030,Rennes,France

/*Table Magasin*/
id,adresse
1,80 Quartier du Lac 33053 Bordeaux
2,2 place de Bretagne 44932 Nantes
3,236 rue de Châteaugiron 35030 Rennes
4,26 rue d’Aubigny	69436 Lyon
5,19 place de l’Argonne 75019 PARIS

/*Fournisseur*/
id,nom
1,KUI
2,COOP
3,Deli

/*Domaine*/
code,description
1,Aliment
2,Vêtement
3,Produit Menager
4,Produit de Beaute

 /*Groupe*/
 code,code_domaine, description
 11,1,surgele
 12,2,conserve
 21,2,Homme
 22,2,Femme
 23,2,Enfant



 /*Sous-groupe*/
code,groupe,description
111,11,pizza
112,11,glaces
113,11,legumes
121,12,thon
122,12,Mais
123,12,champignons
211,21,Chemises
212,21,Pantalons
221,22,Robes
222,22,lingerie
231,23,Pyjamas

/*Article*/
code,date_code,Sous_groupe,fournisseur
1,27-12-2014,111,3
2,27-12-2014,111,2
3,27-12-2014,112,3
4,27-12-2014,112,1
5,27-12-2014,211,3
6,27-12-2014,222,3
7,27-12-2014,113,1
8,27-12-2014,122,1
9,27-12-2014,211,3
1,07-05-2015,111,3
2,07-05-2015,111,2
10,07-06-2012,121,1
11,07-06-2012,123,2


/*Prix*/
date_prix,article,prix_fourniseur,prix_vente
27-12-2014,1,3,3.50
27-12-2014,2,6.80,7.90
27-12-2014,3,3.20,5
27-12-2014,4,4,4.60
27-12-2014,5,23,27
27-12-2014,6,21,25
27-12-2014,7,0.50,1.70
27-12-2014,8,0.90,1.20
27-12-2014,9,28,32
07-05-2015,1,3.02,3.55
07-05-2015,2,6.85,8
07-05-2015,10,0.82,1.54
07-05-2015,11,0.71,1.25


/*Description*/
(date_desc,article,description)
(27-12-2014,1,'XXXXXXXX')
(07-05-2015,11,'YYYYY')


/*Stock*/
(article_code,magasin_id,quantite)
(1,2,320)
(3,1,400)
(2,1,780)
(1,4,900)
(3,5,675)
(5,1,1400)
(1,3,500)
(11,5,500)
(10,5,500)
(7,5,500)


/*Livraison*/
id,magasin_id,fournisseur_id,date_commande,date_livraison
1,1,2,12022015,20-03-2015
2,1,2,12022015,12-04-2015
3,2,1,28122015,25-01-2015
4,3,3,10032015,25-01-2015
5,3,2,18032015,25-01-2015
6,2,1,27042015,25-01-2015
7,1,1,05052015,25-01-2015

/*Contenu*/
code_article,livraison_id,quantite_article
2,1,300
10,2,400
5,3,150
2,4,900
4,5,250
7,6,410
3,7,560


/*Achat*/
id,magasin_id,client_id,mode_paiement,date_achat,horaire,caisse


/*Achat_Article*/
code_article,achat_id,quantite





