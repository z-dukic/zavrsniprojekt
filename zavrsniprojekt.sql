drop database IF EXISTS fitnessapp;
CREATE database fitnessapp;
use fitnessapp;

CREATE TABLE korisnik (
sifra int PRIMARY KEY NOT NULL auto_increment,
nadimak varchar(50) NOT null,
visina int NOT NULL,
tezina int NOT NULL,
spol boolean not null,
dob int NOT NULL
);

CREATE TABLE potrosnjakalorija (
korisnik int,
aktivnosti int
);

CREATE TABLE aktivnosti (
sifra int PRIMARY KEY NOT NULL auto_increment,
imeaktivnosti varchar(50),
vrijemetrajanja int
);

CREATE TABLE unoskalorija (
korisnik int,
hrana int
);

CREATE TABLE hrana (
sifra int PRIMARY KEY NOT NULL auto_increment,
imehrane varchar(50),
kolicina int,
kalorije INT,
proteini int,
ugljikohidrati int,
masti int
);

alter table potrosnjakalorija add foreign key (korisnik) references korisnik(sifra);
alter table potrosnjakalorija add foreign key (aktivnosti) references aktivnosti(sifra);

alter table unoskalorija add foreign key (korisnik) references korisnik(sifra);
alter table unoskalorija add foreign key (hrana) references hrana(sifra);






















