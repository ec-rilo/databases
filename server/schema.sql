CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  Id int NOT NULL AUTO_INCREMENT,
  Roomname varchar(25) NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE messages (
  Id int NOT NULL AUTO_INCREMENT,
  Text varchar(25) NOT NULL,
  UsersId int,
  PRIMARY KEY (Id),
  FOREIGN KEY (UsersId) REFERENCES users(Id)
);

/* Create other tables and define schemas for them here! */


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

