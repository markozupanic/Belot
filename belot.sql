#mysql -uroot < C:\Users\X\Documents\GitHub\Belot\belot.sql


drop database if exists belot;
create database belot;
use belot;

create table partija(
    id int not null primary key auto_increment,
    vrsta varchar(50) not null,
    dokolikoseigra int,
    lokacija int,
    unosi int,
    igrac int
);

create table igrac(
    id int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    spol int not null,
    urlslika varchar(100)
);

create table lokacija(
    id int not null primary key auto_increment,
    latitude int not null,
    longitude int not null,
    naziv varchar(50)
);

create table partija_igrac(
    partija int not null,
    igrac int not null
);


create table mjesanje(
    id int not null primary key auto_increment,
    vrsta varchar(50) not null,
    belot int not null,
    datumunosa datetime,
    stiglja int not null,
    bodovadrugiunos int,
    bodovaprviunos int,
    zvanjedrugiunos int,
    zvanjeprviunos int,
    bodovatreciunos int,
    zvanjetreciunos int,
    partija int
);

alter table partija_igrac add foreign key (partija) references partija(id);
alter table partija_igrac add foreign key (igrac) references igrac(id);

alter table partija add foreign key (igrac) references igrac(id);
alter table partija add foreign key (lokacija) references lokacija(id);

alter table mjesanje add foreign key (partija) references partija(id);

INSERT INTO belot.igrac
(ime, prezime, spol, urlslika)
VALUES(NULL, NULL, 1, NULL);

INSERT INTO belot.igrac
(ime, prezime, spol, urlslika)
VALUES(NULL, NULL, 2, NULL);

INSERT INTO belot.lokacija
(latitude, longitude, naziv)
VALUES(45, 16, NULL);


INSERT INTO belot.partija
(vrsta, dokolikoseigra, lokacija, unosi, igrac)
VALUES('Belot u dvoje', NULL, NULL, NULL, NULL);

INSERT INTO belot.partija
(vrsta, dokolikoseigra, lokacija, unosi, igrac)
VALUES('Belot u troje', NULL, NULL, NULL, NULL);

INSERT INTO belot.partija
(vrsta, dokolikoseigra, lokacija, unosi, igrac)
VALUES('Belot u cetvero', NULL, NULL, NULL, NULL);

INSERT INTO belot.partija_igrac(partija, igrac)
VALUES(1, 1);

INSERT INTO belot.partija_igrac(partija, igrac)
VALUES(2, 2);

INSERT INTO belot.partija_igrac(partija, igrac)
VALUES(3, 1);

INSERT INTO belot.mjesanje
(vrsta, belot, datumunosa, stiglja, bodovadrugiunos, bodovaprviunos, zvanjedrugiunos, zvanjeprviunos, bodovatreciunos, zvanjetreciunos, partija)
VALUES('belot bez belote i stiglje', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO belot.mjesanje
(vrsta, belot, datumunosa, stiglja, bodovadrugiunos, bodovaprviunos, zvanjedrugiunos, zvanjeprviunos, bodovatreciunos, zvanjetreciunos, partija)
VALUES('belot', 501, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO belot.mjesanje
(vrsta, belot, datumunosa, stiglja, bodovadrugiunos, bodovaprviunos, zvanjedrugiunos, zvanjeprviunos, bodovatreciunos, zvanjetreciunos, partija)
VALUES('belot', 701, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO belot.mjesanje
(vrsta, belot, datumunosa, stiglja, bodovadrugiunos, bodovaprviunos, zvanjedrugiunos, zvanjeprviunos, bodovatreciunos, zvanjetreciunos, partija)
VALUES('belot', 1001, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO belot.mjesanje
(vrsta, belot, datumunosa, stiglja, bodovadrugiunos, bodovaprviunos, zvanjedrugiunos, zvanjeprviunos, bodovatreciunos, zvanjetreciunos, partija)
VALUES('stiglja', 0, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL);










