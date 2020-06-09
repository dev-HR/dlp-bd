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







insert into emplacement values (41, 'M1  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (42, 'M2  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (43, 'M3  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (44, 'M4  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (45, 'M5  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (46, 'M6  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (47, 'M7  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (48, 'M8  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (49, 'M9  ', 'Mobil-home', 6, 500.00);
insert into emplacement values (50, 'M10 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (51, 'M11 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (52, 'M12 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (53, 'M13 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (54, 'M14 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (55, 'M15 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (56, 'M16 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (57, 'M17 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (58, 'M18 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (59, 'M19 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (60, 'M20 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (61, 'M21 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (62, 'M22 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (63, 'M23 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (64, 'M24 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (65, 'M25 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (66, 'M26 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (67, 'M27 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (68, 'M28 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (69, 'M29 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (70, 'M30 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (71, 'M31 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (72, 'M32 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (73, 'M33 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (74, 'M34 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (75, 'M35 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (76, 'M36 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (77, 'M37 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (78, 'M38 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (79, 'M39 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (80, 'M40 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (81, 'M41 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (82, 'M42 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (83, 'M43 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (84, 'M44 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (85, 'M45 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (86, 'M46 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (87, 'M47 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (88, 'M48 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (89, 'M49 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (90, 'M50 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (91, 'M51 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (92, 'M52 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (93, 'M53 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (94, 'M54 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (95, 'M55 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (96, 'M56 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (97, 'M57 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (98, 'M58 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (99, 'M59 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (100, 'M60 ', 'Mobil-home', 6, 500.00);
insert into emplacement values (101, 'M61 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (102, 'M62 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (103, 'M63 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (104, 'M64 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (105, 'M65 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (106, 'M66 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (107, 'M67 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (108, 'M68 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (109, 'M69 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (110, 'M70 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (111, 'M71 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (112, 'M72 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (113, 'M73 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (114, 'M74 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (115, 'M75 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (116, 'M76 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (117, 'M77 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (118, 'M78 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (119, 'M79 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (120, 'M80 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (121, 'M81 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (122, 'M82 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (123, 'M83 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (124, 'M84 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (125, 'M85 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (126, 'M86 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (127, 'M87 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (128, 'M88 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (129, 'M89 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (130, 'M90 ', 'Mobil-home', 8, 700.00);
insert into emplacement values (131, 'C1  ', 'Caravane', 4, 350.00);
insert into emplacement values (132, 'C2  ', 'Caravane', 4, 350.00);
insert into emplacement values (133, 'C3  ', 'Caravane', 4, 350.00);
insert into emplacement values (134, 'C4  ', 'Caravane', 4, 350.00);
insert into emplacement values (135, 'C5  ', 'Caravane', 4, 350.00);
insert into emplacement values (136, 'C6  ', 'Caravane', 4, 350.00);
insert into emplacement values (137, 'C7  ', 'Caravane', 4, 350.00);
insert into emplacement values (138, 'C8  ', 'Caravane', 4, 350.00);
insert into emplacement values (139, 'C9  ', 'Caravane', 4, 350.00);
insert into emplacement values (140, 'C10 ', 'Caravane', 4, 350.00);
insert into emplacement values (141, 'C11 ', 'Caravane', 6, 450.00);
insert into emplacement values (142, 'C12 ', 'Caravane', 6, 450.00);
insert into emplacement values (143, 'C13 ', 'Caravane', 6, 450.00);
insert into emplacement values (144, 'C14 ', 'Caravane', 6, 450.00);
insert into emplacement values (145, 'C15 ', 'Caravane', 6, 450.00);
insert into emplacement values (146, 'C16 ', 'Caravane', 6, 450.00);
insert into emplacement values (147, 'C17 ', 'Caravane', 8, 550.00);
insert into emplacement values (148, 'C18 ', 'Caravane', 8, 550.00);
insert into emplacement values (149, 'C19 ', 'Caravane', 8, 550.00);
insert into emplacement values (150, 'C20 ', 'Caravane', 8, 550.00);
insert into emplacement values (1, 'A01 ', 'Appartement', 4, 550.00);
insert into emplacement values (2, 'A02 ', 'Appartement', 4, 550.00);
insert into emplacement values (3, 'A03 ', 'Appartement', 4, 550.00);
insert into emplacement values (4, 'A04 ', 'Appartement', 4, 550.00);
insert into emplacement values (5, 'A05 ', 'Appartement', 4, 550.00);
insert into emplacement values (6, 'A06 ', 'Appartement', 8, 990.00);
insert into emplacement values (7, 'A07 ', 'Appartement', 8, 990.00);
insert into emplacement values (8, 'A08 ', 'Appartement', 6, 770.00);
insert into emplacement values (9, 'A09 ', 'Appartement', 6, 770.00);
insert into emplacement values (10, 'A010', 'Appartement', 6, 770.00);
insert into emplacement values (11, 'A011', 'Appartement', 6, 770.00);
insert into emplacement values (12, 'A012', 'Appartement', 6, 770.00);
insert into emplacement values (13, 'A013', 'Appartement', 6, 770.00);
insert into emplacement values (14, 'A014', 'Appartement', 6, 770.00);
insert into emplacement values (15, 'A015', 'Appartement', 6, 770.00);
insert into emplacement values (16, 'A11 ', 'Appartement', 4, 550.00);
insert into emplacement values (17, 'A12 ', 'Appartement', 4, 550.00);
insert into emplacement values (18, 'A13 ', 'Appartement', 4, 550.00);
insert into emplacement values (19, 'A14 ', 'Appartement', 4, 550.00);
insert into emplacement values (20, 'A15 ', 'Appartement', 4, 550.00);
insert into emplacement values (21, 'A16 ', 'Appartement', 8, 990.00);
insert into emplacement values (22, 'A17 ', 'Appartement', 8, 990.00);
insert into emplacement values (23, 'A18 ', 'Appartement', 6, 770.00);
insert into emplacement values (24, 'A19 ', 'Appartement', 6, 770.00);
insert into emplacement values (25, 'A110', 'Appartement', 6, 770.00);
insert into emplacement values (26, 'A111', 'Appartement', 6, 770.00);
insert into emplacement values (27, 'A112', 'Appartement', 6, 770.00);
insert into emplacement values (28, 'A113', 'Appartement', 6, 770.00);
insert into emplacement values (29, 'A114', 'Appartement', 6, 770.00);
insert into emplacement values (30, 'A115', 'Appartement', 6, 770.00);
insert into emplacement values (31, 'A21 ', 'Appartement', 4, 660.00);
insert into emplacement values (32, 'A22 ', 'Appartement', 4, 660.00);
insert into emplacement values (33, 'A23 ', 'Appartement', 4, 660.00);
insert into emplacement values (34, 'A24 ', 'Appartement', 4, 660.00);
insert into emplacement values (35, 'A25 ', 'Appartement', 4, 660.00);
insert into emplacement values (36, 'A26 ', 'Appartement', 8, 1100.00);
insert into emplacement values (37, 'A27 ', 'Appartement', 6, 880.00);
insert into emplacement values (38, 'A28 ', 'Appartement', 6, 880.00);
insert into emplacement values (39, 'A29 ', 'Appartement', 6, 880.00);
insert into emplacement values (40, 'A210', 'Appartement', 6, 880.00);


insert into pension values (1, 'Pension complete              ', 32.00);
insert into pension values (2, 'Demi-Pension midi             ', 13.50);
insert into pension values (3, 'Demi-Pension soir             ', 12.50);


insert into client values (1, 'LAMBERT', 'Jean', '13 avenue du General de Gaulle', '81000', 'CASTRES', 7, 3, '2020-09-10', 0, 6, 1, 1);
insert into client values (2, 'VENAT', 'Laure', '1 bis rue des Peupliers', '14000', 'CAEN', 4, 1, '2020-09-10', 0, 8, NULL, 1);
insert into client values (3, 'COUVANT', 'Laurent', '4 avenue KLEBER', '94130', 'NOGENT SUR MARNE', 3, 2, '2020-09-11', 600, 1, 1, 1);
insert into client values (4, 'HUYS', 'Didier', '20 rue de Niepce', '59000', 'LILLE', 1, 1, '2020-09-11', 250, 41, 2, 1);
insert into client values (5, 'MOREIRA', 'Pablo', '5 rue Joffre', '14000', 'CAEN', 8, 2, '2020-09-11', 0, 101, NULL, 1);
insert into client values (6, 'HANOT', 'Sebastien', '31 impasse Miroton', '27000', 'DREUX', 6, 2, '2020-09-12', 0, 102, 2, 1);
insert into client values (7, 'FONTAINE', 'jean', '43 allee guynemer', '14110', 'CONDE SUR NOIREAU', 6, 2, '2020-09-12', 0, 2, 3, 1);

insert into determine values (1, 1, 'R');
insert into determine values (1, 2, 'R');
insert into determine values (1, 3, 'L');
insert into determine values (3, 1, 'L');
insert into determine values (3, 2, 'L');
insert into determine values (3, 3, 'L');
insert into determine values (4, 1, 'L');
insert into determine values (4, 2, 'L');
insert into determine values (4, 3, 'L');
insert into determine values (5, 1, 'L');
insert into determine values (5, 2, 'L');
insert into determine values (5, 3, 'L');
insert into determine values (6, 1, 'A');
insert into determine values (6, 2, 'A');
insert into determine values (6, 3, 'A');
insert into determine values (7, 1, 'L');
insert into determine values (7, 2, 'L');
insert into determine values (7, 3, 'L');
insert into determine values (8, 1, 'A');
insert into determine values (8, 2, 'L');
insert into determine values (8, 3, 'L');
insert into determine values (41, 1, 'R');
insert into determine values (41, 2, 'L');
insert into determine values (41, 3, 'L');
insert into determine values (101, 1, 'A');
insert into determine values (101, 2, 'A');
insert into determine values (101, 3, 'L');
insert into determine values (102, 1, 'A');
insert into determine values (102, 2, 'A');
insert into determine values (102, 3, 'L');
insert into determine values (1, 4, 'R');
insert into determine values (9, 1, 'R');
insert into determine values (2, 2, 'A');
insert into determine values (2, 1, 'A');
insert into determine values (2, 3, 'L');





