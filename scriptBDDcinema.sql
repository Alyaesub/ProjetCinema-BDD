-- Création de la table Cinéma
CREATE TABLE Cinema (
    id_cinema INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255),
    ville VARCHAR(255)
);