DROP DATABASE IF EXISTS burger_db;

CREATE DATABASE burger_db;
USE burger_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);
INSERT INTO burgers (name,devoured) VALUES ('Beyond Burger',false);
INSERT INTO burgers (name,devoured) VALUES ('Gardien Beefless Burger',true);
INSERT INTO burgers (name,devoured) VALUES ('Boca Burger',false);
INSERT INTO burgers (name,devoured) VALUES ('Beast Burger',false);
INSERT INTO burgers (name,devoured) VALUES ('Portabello Burger',true);
INSERT INTO burgers (name,devoured) VALUES ('Field Roast Burger',false);
