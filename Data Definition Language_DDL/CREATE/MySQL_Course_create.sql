-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-12-31 18:19:56.935

CREATE SCHEMA `MySQL_Course` DEFAULT CHARACTER SET utf8mb4;
USE `MySQL_Course`;

-- tables
-- Table: Clients
CREATE TABLE Clients (
    ID int  NOT NULL AUTO_INCREMENT,
    name varchar(100)  NOT NULL,
    age int  NOT NULL,
    gender char(1)  NOT NULL,
    birth_date date  NOT NULL,
    created_at timestamp  NOT NULL,
    CONSTRAINT Clients_pk PRIMARY KEY (ID)
);

-- Table: Positions
CREATE TABLE Positions (
    ID int  NOT NULL AUTO_INCREMENT,
    position varchar(50)  NOT NULL,
    CONSTRAINT Positions_pk PRIMARY KEY (ID)
);

-- End of file.

