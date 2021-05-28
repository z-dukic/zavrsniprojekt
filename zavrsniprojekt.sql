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
korisnik int,
aktivnosti int,
vrijemetrajanja int
);

CREATE TABLE aktivnosti (
sifra int PRIMARY KEY NOT NULL auto_increment,
potrosnjakalorija int,
imeaktivnosti varchar(50)
);

CREATE TABLE hrana (
sifra int PRIMARY KEY NOT NULL auto_increment,
korisnik int,
imehrane varchar(50),
tezinahrane int
);

CREATE TABLE imehrane (
sifra int PRIMARY KEY NOT NULL auto_increment,
hrana int,
kalorije INT,
proteini int,
ugljikohidrati int,
masti int
);


alter table potrosnjakalorija add foreign key (korisnik) references korisnik(sifra);
alter table aktivnosti add foreign key (potrosnjakalorija) references potrosnjakalorija(sifra);

alter table hrana add foreign key (korisnik) references korisnik(sifra);
alter table imehrane add foreign key (hrana) references hrana(sifra);





























