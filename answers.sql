--Faire une requete qui affiche le titre (dans la colonne "le titre") et le resume (dans la colonne "resum") des films qui ont le chiffre 28 dans leur titre.
SELECT titre AS "le titre", resum FROM film WHERE titre LIKE "%28%";
--Faire une requete qui affiche le titre (dans la colonne "le titre") et le resume(dans la colonne "resum") des films qui ont le nombre 28 dans leur titre.
SELECT titre AS "le titre", resum FROM film WHERE titre LIKE "%28%";
--Faire une requete qui affiche le titre et le resume separes par un "-" (dans une colonne "titre - resum") des 50 derniers films classes par id genre(exemple : 28 jours plus tard - Un film genial).
SELECT CONCAT(titre, CONCAT(" - ", resum)) AS "titre - resum" FROM film ORDER BY id_genre LIMIT 50;
--Faire une requete qui affiche le titre d'origine en minuscule (dans une colonne "titre min"), le resume d'origine en minuscule egalement (dans une colonne "resum min"), le nom du genre (dans une colonne "nom genre"), l'id du genre (dans une colonne "id genre"), le titre modifie (dans une colonne"titre replace") et le resume modifie (dans une colonne "resum replace") des films qui appartiennentau genre "science fiction" ou au genre "drama", en remplacant toutes les occurences de "28" par des "21" dans les titre et dans les resumes modifies.
SELECT LOWER(film.titre) AS "titre min", LOWER(film.resum) AS "resum min", genre.nom AS "nom genre", film.id_genre AS "id genre", REPLACE(film.titre, "28", "21") AS "titre replace", REPLACE(film.resum, "28", "21") AS "resum replace" FROM film, genre WHERE genre.nom IN("science fiction", "drama") AND film.id_genre = genre.id_genre;
--Faire une requete qui affiche le nombre de places dans le cinema (dans une colonne "nbr place").
SELECT SUM(nbr_siege) AS "nbr place" FROM salle;
--Faire une requete qui affiche le nombre de place dans le cinema (dans une colonne "nbr place").
SELECT SUM(nbr_siege) AS "nbr place" FROM salle;
--Faire une requete qui compte le nombre de places dans le cinema (dans une colonne "nbr place").
SELECT SUM(nbr_siege) AS "nbr place" FROM salle;
--Faire une requete qui affiche l'id du membre (dans une colonne "id_membre"), l'id de la fiche (dans une colonne"id_perso"), la date d'inscription (dans une colonne "date inscription") et le nombre de jour depuis l'inscription(dans une colonne "nbr jours") des membres qui se sont inscrit il y a au moins 2024 jours mais pas plus de 4048 jours, le tout ordonne par date d'inscription decroissante.
SELECT id_membre, id_fiche_perso AS "id_perso", date_inscription AS "date inscription", DATEDIFF(NOW(), date_inscription) AS "nbr jours" FROM membre WHERE DATEDIFF(NOW(), date_inscription) BETWEEN 2024 AND 4048 ORDER BY date_inscription DESC;
--Faire une requete qui affiche l'id des membres (dans une colonne "id_membre) et la date de visionnage (dans une colonne "histo date") des membres ayant vu les films d'id 2989 et/ou 2762, le tout ordonne par date de visionnage decroissante.
SELECT id_membre, date AS "histo date" FROM historique_membre WHERE id_film IN(2989, 2762) ORDER BY date DESC;
-- Faire une requete qui affiche l'id des membres (dans une colonne "id_membre) et la date de visionnage (dans une colonne "histo date") des membres ayant vu les films d'i 2989 et/ou 2762, le tout ordonne par date de visionnage decroissante
SELECT id_membre, date AS "histo date" FROM historique_membre WHERE id_film IN(2989, 2762) ORDER BY date DESC;
--Faire une requete qui affiche l'id du membre (dans une colonne "id_membre") et la date de visionnage (dans une colonne "histo date") pour les membres qui sont alles voir les films numeros 2989 ou numeros 2762, ordonnee par date decroissante.
SELECT id_membre, date AS "histo date" FROM historique_membre WHERE id_film IN(2989, 2762) ORDER BY date DESC;
--Faire une requete qui affiche l'id des membres (dans une colonne "id_membre) et la date de visionnage (dans une colonne"histo date") des membres ayant vu les films d'i 2989 et/ou 2762, le tout ordonne par date de visionnage decroissante.
SELECT id_membre, date AS "histo date" FROM historique_membre WHERE id_film IN(2989, 2762) ORDER BY date DESC;
--Faire une requete qui affiche le prenom (dans une colone "prenom") des personnes dont le nom commence par un 'A' et finit par un 'Y' (case insensitive).
SELECT prenom FROM fiche_personne WHERE nom LIKE "A%Y";
--Faire une requete qui affiche le prenom (dans une colone "prenom") des personnes dont le nom commence par un 'A'et finit par un 'Y' (case insensitive).
SELECT prenom FROM fiche_personne WHERE nom LIKE "A%Y";
--Faire une requete qui affiche le  nom des salles qui possedent plus de 100 sieges (dans une colonne "nom_salle").
SELECT nom_salle FROM salle WHERE nbr_siege > 100;
--Faire une requete qui affiche le plus grand id_film (dans une colonne "max id film") des films du genre "action".
SELECT MAX(film.id_film) AS "max id film" FROM film, genre WHERE film.id_genre = genre.id_genre AND genre.nom = "action";
--Faire une requete qui affiche le plus grand id_film (dans une colonne "max id film") pour le genre "action".
SELECT MAX(film.id_film) AS "max id film" FROM film, genre WHERE film.id_genre = genre.id_genre AND genre.nom = "action";
--Faire une requete qui affiche le nombre d'etage du cinema (sauf rez de chausse) et l'afficher dans une colonne "nbr etage".
SELECT COUNT(DISTINCT etage_salle) AS "nbr etage" FROM salle WHERE etage_salle != 0;
--Faire une requete qui affiche le nombre d'etage du cinema (sauf le rez de chausse) et l'afficher dans unecolonne "nbr etage".
SELECT COUNT(DISTINCT etage_salle) AS "nbr etage" FROM salle WHERE etage_salle != 0;
-- Faire une requete qui affiche le nombre d'etage du cinema (sauf le rez de chausse) et l'afficher dans une colonne "nbr etage".
SELECT COUNT(DISTINCT etage_salle) AS "nbr etage" FROM salle WHERE etage_salle != 0;
--Faire une requete qui affiche le titre (dans une colonne "titre") des films qui ont un des id suivants :"1, 34, 45, 2, 123, 42642, LOLARD, 4525, 2, 46, 48574, 37, 90, 05,5436, 0005, ABC, 3, 0x34, 875783, 224, 1964".
SELECT titre FROM film WHERE id_film IN(1, 34, 45, 2, 123, 42642, "LOLARD", 4525,2, 46, 48574, 37, 90, 05, 5436, 0005, "ABC", 3, 0x34, 875786, 224, 1964);
--Faire une requete qui affiche (dans une colonne "nom") le nom des reductions qui ont un pourcentage positif mais different de 25,le tout ordonne par id_reduction croissant.
SELECT nom FROM reduction WHERE pourcentage_reduc > 0 AND pourcentage_reduc != 25 ORDER BY id_reduction ASC;
--Faire une requete qui affiche le nom des reductions qui ont un pourcentage de reduction positif etdifferent de 25 (dans une colonne "nom") ordonnes par id_reduction croissant.
SELECT nom FROM reduction WHERE pourcentage_reduc > 0 AND pourcentage_reduc != 25 ORDER BY id_reduction ASC;
--Faire une requete qui affiche le nom des reductions qui ont un pourcentage de reduction positif et different de 25(dans une colonne "nom") ordonnes par id_reduction croissant.
SELECT nom FROM reduction WHERE pourcentage_reduc > 0 AND pourcentage_reduc != 25 ORDER BY id_reduction ASC;
-- Faire une requete qui affiche le nom des reductions qui ont un pourcentage de reduction positif et different de 25 (dans une colonne "nom") ordonnes par id_reduction croissant.
SELECT nom FROM reduction WHERE pourcentage_reduc > 0 AND pourcentage_reduc != 25 ORDER BY id_reduction ASC;
--Faire une requete qui affiche (dans une colonne "nbr_d") le nombre de distributeur dont le numero de telephone commence par 05.
SELECT COUNT(*) AS "nbr_d" FROM distrib WHERE telephone LIKE "05%";
--Faire une requete qui affiche l'id du membre (dans une colonne "id_membre") et le nombre de films differents vu (dans une colonne "nb_films") pour chaque membre du cinema, le tout ordonne par nombre de film vu decroissant puis par ordre croissant d'id_membre.
SELECT id_membre, COUNT(id_film) AS "nb_films" FROM historique_membre GROUP BY id_membre ORDER BY COUNT(id_film) DESC, id_membre ASC;
--Faire une requete qui affiche le titre des films (dans une colonne "titre film") qui ont comme id de genre 0, 6 ou 5 et dont le titre commence par la lettre E (case insensitive).
SELECT titre AS "titre film" FROM film WHERE id_genre IN(0, 6, 5) AND titre LIKE "E%";
--Faire une requete qui affiche le titre des films (dans une colonne "titre film")qui ont comme id de genre 0, 6 ou 5 et dont les titres commencent par lalettre E (case insensitive).
SELECT titre AS "titre film" FROM film WHERE id_genre IN(0, 6, 5) AND titre LIKE "E%";
--Faire une requete qui affiche l'id_film (dans une colonne "id_film"), le titre (dans une colonne "titre") et le resume (dans une colonne "resum film")des films qui sont dans la table film.
SELECT id_film, titre, resum AS "resum film" FROM film;
--Faire une requete qui affiche l'id_film (dans une colonne "id_film"),le titre (dans une colonne "titre") et le resume (dans une colonne "resum film")de tous les films qui sont dans la table film du cinema.
SELECT id_film, titre, resum AS "resum film" FROM film;
--Faire une requete qui affiche l'id_film (dans une colonne "id_film"), le titre (dans une colonne "titre") et le resume (dans une colonne "resum film")de tous les films qui sont dans la table film du cinema.
SELECT id_film, titre, resum AS "resum film" FROM film;
--Faire une requete qui affiche le titre (dans une colonne "titre") de tous les films, ordonnee par date de fin d'affiche decroissante.
SELECT titre FROM film ORDER BY date_fin_affiche DESC;
--Faire une requete qui affiche le titre de tous les films (dans une colonne"titre") ordonnes par date de fin d'affiche decroissante.
SELECT titre FROM film ORDER BY date_fin_affiche DESC;
--Faire une une requete qui affiche le titre (dans une colonne "titre") des films contenantdans leur titre la chaine de caractere 'day' independament de la casse (case insensitive)et dont l'id_genre est egal a 1.
SELECT titre FROM film WHERE titre LIKE "%day%" AND id_genre = 1;
--Faire une requete qui selectionne le titre (dans une colonne "titre") des films contenantdans leur titre la chaine de caracteres 'day' independament de la casse (case non sensitive, ca doit matcher dAy dAY etc..) et dont l'id genre est egal a 1.
SELECT titre FROM film WHERE titre LIKE "%day%" AND id_genre = 1;
--Faire une requete qui affiche le nom des reductions (dans une colonne "nom") dont l'id est egal a 0, 2, 4 ou 7.
SELECT nom FROM reduction WHERE id_reduction IN(0, 2, 4, 7);
--Faire une requete qui affiche le nombre d'abonnement propose par le cinema (dans une colonne "nbr abo") ainsique le cout moyen des abonnements arrondi a l'unite superieur (dans une colonne "c abo").
SELECT COUNT(*) AS "nbr abo", CEIL(AVG(prix)) AS "c abo" FROM abonnement;
--Faire une requete qui affiche le titre des films en majuscule (dans une colonne "titre_maj") de la tablefilm du cinema qui ont un id compris entre 4 et 50 inclus.
SELECT UPPER(titre) AS "titre_maj" FROM film WHERE id_film BETWEEN 4 AND 50;
--Faire une requete qui affiche le titre des films en majuscule de la tablefilm du cinema qui ont un id compris entre 4 et 50 inclus.La colonne devra s'appeler "titre_maj".
SELECT UPPER(titre) AS "titre_maj" FROM film WHERE id_film BETWEEN 4 AND 50;
--Faire une requete qui affiche le titre de tous les films en MD5 (dans une colonne "titre md5") et en SHA1 (dans une colonne "titre sha1").
SELECT MD5(titre) AS "titre md5", SHA1(titre) AS "titre sha1" FROM film;
--Faire une requete qui affiche le nombre de film qu'il y a dans la tablefilm (dans une colonne "nombre films").
SELECT COUNT(*) AS "nombre films" FROM film;
-- Faire une requete qui affiche le nom des salles dont le nombre de siege est compris entre 100 et 300 inclus(dans une colonne "nom_salle").
SELECT nom_salle FROM salle WHERE nbr_siege BETWEEN 100 AND 300;
-- Faire une requete qui affiche le titre (dans une colonne "titre"), la date_debut_affiche(dans une colonne "date_debut"), l'id_distrib (dans une colonne "id_distrib") et le nom dudistributeur (dans une colonne "nom_distrib") de tous les films dont le nom contient 'death'independement de la casse (c.-a-d. que le titre peut contenir dEaTh DeatH et tous ses derives).Si le film n'a pas de distributeur, il faut quand meme l'afficher.
SELECT titre, date_debut_affiche AS "date_debut", film.id_distrib AS "id_distrib", nom AS "nom_distrib" FROM film LEFT JOIN distrib ON distrib.id_distrib = film.id_distrib WHERE titre LIKE "%death%";
--Faire une requete qui affiche le titre des films (dans une colonne "film"), leur date de debut d'affiche (dans une colonne "date_debut_affiche"), leur id (dans une colonne "id_film") et le nombre de personnes uniques qui l'ont vu (dans une colonne "nb_vues") pour les 50 films les plus vus, classes par nombre de vue decroissant puis par id film croissant.
SELECT titre AS "film", date_debut_affiche, film.id_film, COUNT(historique_membre.id_film) AS "nb_vues" FROM film JOIN historique_membre ON film.id_film = historique_membre.id_film GROUP BY film.id_film ORDER BY COUNT(historique_membre.id_film) DESC, film.id_film ASC LIMIT 50;
--Faire une requete qui affiche le titre (dans une colonne "titre"), les dates de debut (dans une colonne "date_debut_affiche") et de fin d'affiche (dans une colonne "date_fin_affiche") et le nombre de jours ou les films ont ete a l'affiche (dans une colonne "temps_affiche") pour les films dont ont peut calculer le temps d'affiche.
SELECT titre, date_debut_affiche, date_fin_affiche, DATEDIFF(date_fin_affiche, date_debut_affiche) AS "temps_affiche" FROM film WHERE DATEDIFF(date_fin_affiche, date_debut_affiche) IS NOT NULL;
