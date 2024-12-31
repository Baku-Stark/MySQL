-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-12-31 18:32:53.044

CREATE SCHEMA `MySQL_Course` DEFAULT CHARACTER SET utf8mb4;
USE `MySQL_Course`;;

-- tables
-- Table: Clients
CREATE TABLE Clients (
    ID int  NOT NULL AUTO_INCREMENT,
    Positions_ID int  NOT NULL,
    nome varchar(100)  NOT NULL,
    age int  NOT NULL,
    gender char(1)  NOT NULL,
    birth_date date  NOT NULL,
    created_at timestamp  NOT NULL,
    CONSTRAINT Clients_pk PRIMARY KEY (ID)
);

-- Table: Positions
CREATE TABLE Positions (
    ID int  NOT NULL AUTO_INCREMENT,
    name_position varchar(50)  NOT NULL,
    CONSTRAINT Positions_pk PRIMARY KEY (ID)
);

-- foreign keys
-- Reference: Clients_Positions (table: Clients)
ALTER TABLE Clients ADD CONSTRAINT Clients_Positions FOREIGN KEY Clients_Positions (Positions_ID)
    REFERENCES Positions (ID);

INSERT INTO Clients (ID, name, age, gender, birth_date, created_at)
VALUES 
(1, 'Alice', 30, 'F', '1994-05-15', '2024-12-22 10:00:00'),
(2, 'Bob', 25, 'M', '1998-03-22', '2024-12-22 10:05:00'),
(3, 'Charlie', 40, 'M', '1984-11-10', '2024-12-22 10:10:00'),
(4, 'Diana', 35, 'F', '1988-02-01', '2024-12-22 10:15:00'),
(5, 'Eve', 28, 'F', '1996-09-18', '2024-12-22 10:20:00');

INSERT INTO Positions (ID, name_position)
VALUES 
(1, 'Manager'),
(2, 'Developer'),
(3, 'Designer'),
(4, 'Analyst'),
(5, 'Intern');;

-- End of file.

