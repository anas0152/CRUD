SET NAMES 'utf8';
SET CHARACTER SET utf8;

--Création de la base de données
DROP DATABASE IF EXISTS crud;
CREATE DATABASE crud;
USE crud;


CREATE TABLE personnes(
   id INT PRIMARY KEY AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   email VARCHAR(125) NOT NULL,
   mot_de_passe VARCHAR(120),
   telephone VARCHAR(50),
   admin BOOLEAN,
   etudiant BOOLEAN,
   professeur BOOLEAN
   
);

CREATE TABLE cours(
   id INT PRIMARY KEY AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL
   
);

CREATE TABLE inscriptions(
    id INT PRIMARY KEY AUTO_INCREMENT,
   id_personne INT,
   id_cours INT,
   FOREIGN KEY(id_personne) REFERENCES personnes(id),
   FOREIGN KEY(id_cours) REFERENCES cours(id)
);


--remplissage des tables

-- Remplissage de la table personnes
INSERT INTO personnes (nom, prenom, email, mot_de_passe, telephone, admin, etudiant, professeur) VALUES
('Dupont', 'Jean', 'jean.dupont@email.com', 'mdp123', '0601020304', TRUE, FALSE, FALSE),
('Martin', 'Sophie', 'sophie.martin@email.com', 'mdp456', '0611223344', FALSE, TRUE, FALSE),
('Durand', 'Paul', 'paul.durand@email.com', 'mdp789', '0622334455', FALSE, FALSE, TRUE),
('Lemoine', 'Alice', 'alice.lemoine@email.com', 'mdp234', '0633445566', FALSE, TRUE, FALSE),
('Bernard', 'Luc', 'luc.bernard@email.com', 'mdp567', '0644556677', FALSE, FALSE, TRUE),
('Morel', 'Camille', 'camille.morel@email.com', 'mdp890', '0655667788', FALSE, TRUE, FALSE),
('Garcia', 'Nicolas', 'nicolas.garcia@email.com', 'mdp321', '0666778899', FALSE, FALSE, TRUE),
('Richard', 'Emma', 'emma.richard@email.com', 'mdp654', '0677889900', FALSE, TRUE, FALSE),
('Petit', 'Hugo', 'hugo.petit@email.com', 'mdp987', '0688990011', FALSE, TRUE, FALSE),
('Roux', 'Chloe', 'chloe.roux@email.com', 'mdp111', '0699001122', TRUE, FALSE, FALSE);

-- Remplissage de la table cours
INSERT INTO cours (nom) VALUES
('Mathématiques'),
('Informatique'),
('Histoire'),
('Physique'),
('Chimie');

-- Remplissage de la table inscriptions
INSERT INTO inscriptions (id_personne, id_cours) VALUES
(2, 1), (2, 2), (3, 3), (4, 1), (4, 4), (5, 2), (5, 5), (6, 3), (6, 1), (7, 2),
(7, 5), (8, 4), (8, 3), (9, 1), (9, 5), (10, 2), (10, 4), (1, 3), (1, 5), (3, 2);