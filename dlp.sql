drop database if exists dlp ;
create database dlp ;

use dlp ;


create table emplacement (
	num_emplacement integer not null ,
	nom_emplacement char(4) ,
	type_emplacement varchar(50) ,
	capacite_emplacement smallint ,
	prix_emplacement numeric(6,2) ,
	primary key(num_emplacement)
) ;

create table pension (
	type_pension integer not null ,
	designation varchar(30) , 
	prix_pension decimal(5,2) ,
	primary key(type_pension)
) ;

create table client (
	num_client integer not null ,
	nom_client varchar(30) not null ,
	prenom_client varchar(30) not null ,
	adresse_client varchar(200) ,
	code_postal_client char(5) ,
	ville_client varchar(50) ,
	nb_personnes int ,
	duree_location int ,
	date_courrier date ,
	montant_acompte numeric(10,0) default 0 ,
	num_emplacement integer not null ,
	type_pension integer ,
	num_semaine_arrivee integer ,
	primary key(num_client) ,
	foreign key(num_emplacement) references emplacement(num_emplacement) ,
	foreign key(type_pension) references pension(type_pension)
) ;

create table determine (
	num_semaine integer not null ,
	num_emplacement integer not null ,
	etat_emplacement char(1) ,
	primary key(num_semaine,num_emplacement) ,
	foreign key(num_emplacement) references emplacement(num_emplacement)
	
) ;






