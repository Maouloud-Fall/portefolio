-- Création de la base de données
CREATE DATABASE IF NOT EXISTS RobPortfolio;

-- Utilisation de la base de données
USE RobPortfolio;

-- Suppression de la table roles suivie de la création
DROP TABLE IF EXISTS roles;
CREATE TABLE IF NOT EXISTS roles (
    RoleID tinyint NOT NULL AUTO_INCREMENT,
    RoleName varchar(255) NOT NULL,
    RoleColor varchar(7) NOT NULL DEFAULT '#f5f6fa',
    PRIMARY KEY(RoleID)
);

-- Suppression de la table users suivie de la création
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    UserID int(11) NOT NULL AUTO_INCREMENT,
    UserName varchar(255) NOT NULL,
    Password varchar(255) NOT NULL,
    RoleID tinyint NOT NULL,
    PRIMARY KEY(UserID),
    FOREIGN KEY(RoleID) REFERENCES roles(RoleID)
);

-- Suppression de la table clients suivie de la création
DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients (
    ClientID tinyint NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    Description varchar(255) NOT NULL,
    Active tinyint NOT NULL DEFAULT 1,
    UserID int(11) NOT NULL,
    PRIMARY KEY(ClientID),
    FOREIGN KEY(UserID) REFERENCES users(UserID)
);

-- Suppression de la table projets suivie de la création
DROP TABLE IF EXISTS projets;
CREATE TABLE IF NOT EXISTS projets (
    ProjetID int(11) NOT NULL AUTO_INCREMENT,
    Titre varchar(255) NOT NULL,
    Description text NOT NULL,
    Point text NOT NULL,
    Conclusion text NOT NULL,
    Img1 varchar(255) NOT NULL,
    Img2 varchar(255) NOT NULL,
    Img3 varchar(255) NOT NULL,
    Project3D text,
    Vid text,
    Website text,
    UserID int(11) NOT NULL,
    PRIMARY KEY(ProjetID),
    FOREIGN KEY(UserID) REFERENCES users(UserID)
);
