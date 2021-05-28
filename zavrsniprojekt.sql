drop database IF EXISTS fitnessapp;
CREATE database fitnessapp;
use fitnessapp;

CREATE TABLE korisnik (
sifra int PRIMARY KEY NOT NULL auto_increment,
nadimak varchar(50) NOT null,
visina int NOT NULL,
tezina int NOT NULL,
spol varchar(50),
dob int NOT NULL
);

CREATE TABLE potrosnjakalorija (
sifra int PRIMARY KEY NOT NULL auto_increment,
aktivnosti int,
vrijemetrajanja int
);

CREATE TABLE aktivnosti (
sifra int PRIMARY KEY NOT NULL auto_increment,
imeaktivnosti varchar(50),
potrosenekalorije int
);

CREATE TABLE hrana (
sifra int PRIMARY KEY NOT NULL auto_increment,
imehrane varchar(50),
tezinahrane int
);

CREATE TABLE imehrane (
sifra int PRIMARY KEY NOT NULL auto_increment,
kalorije INT,
proteini int,
ugljikohidrati int,
masti int
);



