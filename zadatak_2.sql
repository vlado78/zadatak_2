drop database if exists salon;

create database salon;

use salon;


create table djelatnik(
sifra int not null primary key auto_increment,
ime varchar(20),
prezime varchar (20)

);

create table usluga(
sifra int primary key not null auto_increment,
naziv varchar(20),
djelatnik int

);

create table korisnik(
sifra int primary key not null auto_increment,
ime varchar(20),
prezime varchar (20),
usluga int

);
 
 
 alter table korisnik add foreign key (usluga) references usluga(sifra);
 
 alter table usluga add foreign key (djelatnik) references djelatnik(sifra);
 
 