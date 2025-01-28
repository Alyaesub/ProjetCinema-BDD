-- Création de la table Cinéma
CREATE TABLE Cinema (
    id_cinema INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255),
    ville VARCHAR(255)
);

-- Création de la table Salle
CREATE TABLE Salle (
    id_salle INT PRIMARY KEY AUTO_INCREMENT,
    numéro VARCHAR(255) NOT NULL,
    capacite INT NOT NULL,
    id_cinema INT,
    FOREIGN KEY (id_cinema) REFERENCES Cinema(id_cinema)
);

-- Création de la table Film
CREATE TABLE Film (
    id_film INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    duree INT NOT NULL,
    genre VARCHAR(255)
);

-- Création de la table Séance
CREATE TABLE Seance (
    id_seance INT PRIMARY KEY AUTO_INCREMENT,
    id_film INT,
    id_salle INT,
    horaire DATETIME NOT NULL,
    FOREIGN KEY (id_film) REFERENCES Film(id_film),
    FOREIGN KEY (id_salle) REFERENCES Salle(id_salle)
);

-- Création de la table Tarif
CREATE TABLE Tarif (
    id_tarif INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(50) NOT NULL,
    prix DECIMAL(5, 2) NOT NULL
);

CREATE TABLE Client (
    id_client INT PRIMARY KEY AUTO_INCREMENT,
    id_nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
);

-- Création de la table Réservation
CREATE TABLE Reservation (
    id_client VARCHAR(255) NOT NULL,
    id_reservation INT PRIMARY KEY AUTO_INCREMENT,
    id_seance INT,
    id_tarif INT,
    nombre_places : INT
    email_client VARCHAR(255) NOT NULL UNIQUE,
    FOREIGN KEY (id_seance) REFERENCES Seance(id_seance),
    FOREIGN KEY (id_tarif) REFERENCES Tarif(id_tarif)
);

-- Création de la table Utilisateur
CREATE TABLE Utilisateur (
    id_utilisateur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    role ENUM('admin', 'gestionnaire') NOT NULL,
    id_cinema INT,
    FOREIGN KEY (id_cinema) REFERENCES Cinema(id_cinema)
);