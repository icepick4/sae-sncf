INSERT INTO COUNTRY VALUES (250,'France','FR');
INSERT INTO COUNTRY VALUES (756,'Suisse','CH');

INSERT INTO REGION VALUES (21,250,"Côte-d'Or");
INSERT INTO REGION VALUES (25,250,'Doubs');
INSERT INTO REGION VALUES (26,250,'Drôme');
INSERT INTO REGION VALUES (30,250,'Gard');
INSERT INTO REGION VALUES (34,250,'Hérault');
INSERT INTO REGION VALUES (69,250,'Rhône');
INSERT INTO REGION VALUES (71,250,'Saône-et-Loire');
INSERT INTO REGION VALUES (75,250,'Paris');
INSERT INTO REGION VALUES (84,250,'Vaucluse');
INSERT INTO REGION VALUES (90,250,'Territoire-de-Belfort');

INSERT INTO REGION VALUES (1,756,'Zurich');
INSERT INTO REGION VALUES (2,756,'Berne');
INSERT INTO REGION VALUES (3,756,'Lucerne');
INSERT INTO REGION VALUES (4,756,'Uri');
INSERT INTO REGION VALUES (5,756,'Schwyz');
INSERT INTO REGION VALUES (6,756,'Obwald');
INSERT INTO REGION VALUES (7,756,'Nidwald');
INSERT INTO REGION VALUES (8,756,'Glaris');
INSERT INTO REGION VALUES (9,756,'Zoug');
INSERT INTO REGION VALUES (10,756,'Fribourg');
INSERT INTO REGION VALUES (11,756,'Soleure');
INSERT INTO REGION VALUES (12,756,'Bâle-Ville');
INSERT INTO REGION VALUES (13,756,'Bâle-Champagne');
INSERT INTO REGION VALUES (14,756,'Schaffhouse');
INSERT INTO REGION VALUES (15,756,'Appenzell Rh -Ext.');
INSERT INTO REGION VALUES (16,756,'Appenzell Rh -Int.');
INSERT INTO REGION VALUES (17,756,'Saint-Gall');
INSERT INTO REGION VALUES (18,756,'Grisons');
INSERT INTO REGION VALUES (19,756,'Argovie');
INSERT INTO REGION VALUES (20,756,'Thurgovie');
INSERT INTO REGION VALUES (21,756,'Tessin');
INSERT INTO REGION VALUES (22,756,'Vaud');
INSERT INTO REGION VALUES (23,756,'Valais');
INSERT INTO REGION VALUES (24,756,'Neuchâtel');
INSERT INTO REGION VALUES (25,756,'Genève');
INSERT INTO REGION VALUES (26,756,'Jura');

INSERT INTO CITY VALUES (1,250,75,75000,'Paris');
INSERT INTO CITY VALUES (2,250,90,90000,'Belfort');
INSERT INTO CITY VALUES (3,250,25,25056,'Besançon');
INSERT INTO CITY VALUES (4,250,71,71200,'Le-Creusot');
INSERT INTO CITY VALUES (5,250,71,71100,'Châlon-Sur-Saône');
INSERT INTO CITY VALUES (6,250,71,71000,'Macon');
INSERT INTO CITY VALUES (7,250,69,69000,'Lyon');
INSERT INTO CITY VALUES (8,250,26,26362,'Valence');
INSERT INTO CITY VALUES (9,250,26,26200,'Montélimar');
INSERT INTO CITY VALUES (10,250,84,84100,'Orange');
INSERT INTO CITY VALUES (11,250,84,84000,'Avignon');
INSERT INTO CITY VALUES (12,250,34,34000,'Montpellier');
INSERT INTO CITY VALUES (13,250,30,30000,'Nîmes');


INSERT INTO CITY VALUES (14,756,1,80000,'Zurich');
INSERT INTO CITY VALUES (15,756,12,80000,'Bâle');

INSERT INTO CITY VALUES (16,250,21,21000,'Dijon');

INSERT INTO STATION VALUES (1,1,'Paris-Gare-De-Lyon');
INSERT INTO PLATFORM VALUES('A',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('B',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('C',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('D',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('E',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('F',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('G',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('H',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('I',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('J',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('K',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('L',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('M',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('N',1,1,True,False,null,400);
INSERT INTO PLATFORM VALUES('A',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('H',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('I',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('J',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('K',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('L',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('M',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('N',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('O',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('P',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('Q',2,1,True,False,null,480);
INSERT INTO PLATFORM VALUES('R',2,1,True,False,null,480);

INSERT INTO STATION VALUES (2,2,'Belfort-Montbéliar-TGV');
INSERT INTO PLATFORM VALUES('A',1,2,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,2,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,2,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,2,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,2,True,False,null,480);

INSERT INTO STATION VALUES (3,3,'Besançon-Franche-Compté-TGV');
INSERT INTO PLATFORM VALUES('A',1,3,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,3,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,3,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,3,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,3,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,3,True,False,null,480);

INSERT INTO STATION VALUES (4,4,'Le-Creusot-TGV');
INSERT INTO PLATFORM VALUES('A',1,4,True,False,null,428);
INSERT INTO PLATFORM VALUES('B',1,4,True,False,null,421);

INSERT INTO STATION VALUES (5,5,'Chalon-sur-Saône');
INSERT INTO PLATFORM VALUES('A',1,5,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,5,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,5,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,5,True,False,null,480)

INSERT INTO STATION VALUES (6,6,'Macon-Loche-TGV');
INSERT INTO PLATFORM VALUES('A',1,6,True,False,null,428);
INSERT INTO PLATFORM VALUES('B',1,6,True,False,null,421);

INSERT INTO STATION VALUES (7,7,'Lyon-Part-Dieu');
INSERT INTO PLATFORM VALUES('A',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('H',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('I',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('J',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('K',1,7,True,False,null,480);
INSERT INTO PLATFORM VALUES('L',1,7,True,False,null,480);

INSERT INTO STATION VALUES (8,7,'Lyon-Perrache');
INSERT INTO PLATFORM VALUES('A',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('H',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('I',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('J',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('K',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('L',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('M',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('N',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('O',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('P',1,8,True,False,null,480);
INSERT INTO PLATFORM VALUES('Q',1,8,True,False,null,480);

INSERT INTO STATION VALUES (9,8,'Valence-TGV');
INSERT INTO PLATFORM VALUES('A',1,9,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,9,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,9,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,9,True,False,null,480);

INSERT INTO STATION VALUES (10,8,'Valence-Ville');
INSERT INTO PLATFORM VALUES('A',1,10,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,10,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,10,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,10,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,10,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,10,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',1,10,True,False,null,480);

INSERT INTO STATION VALUES (11,9,'Montélimar');
INSERT INTO PLATFORM VALUES('A',1,11,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,11,True,False,null,480);

INSERT INTO STATION VALUES (12,10,'Orange');
INSERT INTO PLATFORM VALUES('A',1,12,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,12,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,12,True,False,null,480);

INSERT INTO STATION VALUES (13,11,'Avignon-Centre');
INSERT INTO PLATFORM VALUES('A',1,13,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,13,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,13,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,13,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,13,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,13,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',1,13,True,False,null,480);

INSERT INTO STATION VALUES (14,12,'Montpellier-Saint-Roch');
INSERT INTO PLATFORM VALUES('A',1,14,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,14,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,14,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,14,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,14,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,14,True,False,null,480);

INSERT INTO STATION VALUES (15,13,'Nîmes-Centre');
INSERT INTO PLATFORM VALUES('A',1,15,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,15,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,15,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,15,True,False,null,480);

INSERT INTO STATION VALUES (16,14,'Zurich-Gare-Centrale');
INSERT INTO PLATFORM VALUES('A',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('H',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('I',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('J',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('K',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('L',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('M',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('N',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('O',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('P',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('Q',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('R',1,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('A',2,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',2,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',2,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',2,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('A',3,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',3,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',3,16,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',3,16,True,False,null,480);

INSERT INTO STATION VALUES (17,15,'Bâle-CFF');
INSERT INTO PLATFORM VALUES('A',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('B',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('C',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('D',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('E',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('F',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('H',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('I',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('J',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('K',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('L',1,17,True,False,null,480);
INSERT INTO PLATFORM VALUES('M',1,16,True,False,null,400);
INSERT INTO PLATFORM VALUES('N',1,16,True,False,null,400);
INSERT INTO PLATFORM VALUES('O',1,16,True,False,null,400);
INSERT INTO PLATFORM VALUES('P',1,16,True,False,null,400);

INSERT INTO STATION VALUES(18,16,'Dijon-Ville');
INSERT INTO PLATFORM VALUES('A',1,18,True,False,null,400);
INSERT INTO PLATFORM VALUES('B',1,18,True,False,null,400);
INSERT INTO PLATFORM VALUES('C',1,18,True,False,null,400);
INSERT INTO PLATFORM VALUES('D',1,18,True,False,null,400);
INSERT INTO PLATFORM VALUES('E',1,18,True,False,null,400);
INSERT INTO PLATFORM VALUES('F',1,18,True,False,null,480);
INSERT INTO PLATFORM VALUES('G',1,18,True,False,null,480);
INSERT INTO PLATFORM VALUES('H',1,18,True,False,null,480);
INSERT INTO PLATFORM VALUES('I',1,18,True,False,null,480);
INSERT INTO PLATFORM VALUES('J',1,18,True,False,null,480);
INSERT INTO PLATFORM VALUES('K',1,18,True,False,null,480);

INSERT INTO LINE VALUES(100701,1,7);

INSERT INTO LINE VALUES(100803,1,8);
INSERT INTO LINE_STOP VALUES(100803,7,1,10);

INSERT INTO LINE VALUES(100801,1,8);
INSERT INTO LINE_STOP VALUES(100801,6,1,5);
INSERT INTO LINE_STOP VALUES(100801,7,2,10);

INSERT INTO LINE VALUES(100802,1,8);
INSERT INTO LINE_STOP VALUES(100802,4,1,5);
INSERT INTO LINE_STOP VALUES(100802,7,2,10);

INSERT INTO LINE VALUES(101401,1,14);
INSERT INTO LINE_STOP VALUES(101401,7,1,10);

INSERT INTO LINE VALUES(700101,7,1);

INSERT INTO LINE VALUES(701601,7,16);
INSERT INTO LINE_STOP VALUES(701601,18,1,10);
INSERT INTO LINE_STOP VALUES(701601,17,2,10);

INSERT INTO LINE VALUES(700201,7,2);
INSERT INTO LINE_STOP VALUES(700201,5,1,5);
INSERT INTO LINE_STOP VALUES(700201,3,2,5);

INSERT INTO LINE VALUES(701401,7,14);
INSERT INTO LINE_STOP VALUES(701401,3,1,5);

INSERT INTO LINE VALUES(800103,8,1);
INSERT INTO LINE_STOP VALUES(800103,9,1,10);

INSERT INTO LINE VALUES(800101,8,1);
INSERT INTO LINE_STOP VALUES(800101,7,1,10);
INSERT INTO LINE_STOP VALUES(800101,6,2,5);

INSERT INTO LINE VALUES(800102,8,1);
INSERT INTO LINE_STOP VALUES(800102,7,1,10);
INSERT INTO LINE_STOP VALUES(800102,4,2,5);

INSERT INTO LINE VALUES(800401,8,4);
INSERT INTO LINE_STOP VALUES (800401,6,1,5);

INSERT INTO LINE VALUES(800601,8,6);
INSERT INTO LINE_STOP VALUES (800601,7,1,10);

INSERT INTO LINE VALUES(801101,8,11);
INSERT INTO LINE_STOP VALUES (801101,7,1,10);
INSERT INTO LINE_STOP VALUES (801101,10,2,10);

INSERT INTO LINE VALUES(600801,6,8);
INSERT INTO LINE_STOP VALUES (600801,7,1,10);

INSERT INTO LINE VALUES(1100801,11,8);
INSERT INTO LINE_STOP VALUES (1100801,10,1,5);
INSERT INTO LINE_STOP VALUES (1100801,7,2,10);

INSERT INTO LINE VALUES(1400701,14,7);
INSERT INTO LINE_STOP VALUES (1400701,10,1,5);

INSERT INTO LINE VALUES(1401301,14,13);
INSERT INTO LINE_STOP VALUES (1401301,15,1,5);

INSERT INTO LINE VALUES(1400101,14,1);
INSERT INTO LINE_STOP VALUES (1400101,7,1,10);

INSERT INTO LINE VALUES(1001301,10,13);
INSERT INTO LINE_STOP VALUES (1001301,11,1,5);
INSERT INTO LINE_STOP VALUES (1001301,7,2,5);

INSERT INTO LINE VALUES(1600701,16,7);
INSERT INTO LINE_STOP VALUES (1600701,17,1,10);
INSERT INTO LINE_STOP VALUES (1600701,18,2,10);

INSERT INTO LINE VALUES(1301401,13,14);
INSERT INTO LINE_STOP VALUES (1301401,15,1,5);

INSERT INTO LINE VALUES(1301001,13,10);
INSERT INTO LINE_STOP VALUES (1301001,12,1,5);
INSERT INTO LINE_STOP VALUES (1301001,11,1,5);

INSERT INTO LINE VALUES(200701,2,7);
INSERT INTO LINE_STOP VALUES (200701,3,1,5);
INSERT INTO LINE_STOP VALUES (200701,5,1,5);

INSERT INTO LINE VALUES(400801,4,8);
INSERT INTO LINE_STOP VALUES (400801,6,1,5);

INSERT INTO DELTA_TIME VALUES (13,15,22);
INSERT INTO DELTA_TIME VALUES (13,14,27);
INSERT INTO DELTA_TIME VALUES (13,10,67);
INSERT INTO DELTA_TIME VALUES (13,12,12);
INSERT INTO DELTA_TIME VALUES (17,18,85);
INSERT INTO DELTA_TIME VALUES (17,16,54);
INSERT INTO DELTA_TIME VALUES (2,7,140);
INSERT INTO DELTA_TIME VALUES (2,5,78);
INSERT INTO DELTA_TIME VALUES (2,3,20);
INSERT INTO DELTA_TIME VALUES (3,7,116);
INSERT INTO DELTA_TIME VALUES (3,5,54);
INSERT INTO DELTA_TIME VALUES (5,7,61);
INSERT INTO DELTA_TIME VALUES (4,6,21);
INSERT INTO DELTA_TIME VALUES (4,8,55);
INSERT INTO DELTA_TIME VALUES (4,1,80);
INSERT INTO DELTA_TIME VALUES (7,1,80);
INSERT INTO DELTA_TIME VALUES (7,14,84);
INSERT INTO DELTA_TIME VALUES (7,10,33);
INSERT INTO DELTA_TIME VALUES (7,11,90);
INSERT INTO DELTA_TIME VALUES (7,6,26);
INSERT INTO DELTA_TIME VALUES (7,4,45);
INSERT INTO DELTA_TIME VALUES (7,8,6);
INSERT INTO DELTA_TIME VALUES (7,9,33);
INSERT INTO DELTA_TIME VALUES (7,18,86);
INSERT INTO DELTA_TIME VALUES (8,1,150);
INSERT INTO DELTA_TIME VALUES (8,10,50);
INSERT INTO DELTA_TIME VALUES (8,11,69);
INSERT INTO DELTA_TIME VALUES (8,6,41);
INSERT INTO DELTA_TIME VALUES (14,1,209);
INSERT INTO DELTA_TIME VALUES (14,9,75);
INSERT INTO DELTA_TIME VALUES (14,15,27);
INSERT INTO DELTA_TIME VALUES (6,1,100);
INSERT INTO DELTA_TIME VALUES (11,10,23);
INSERT INTO DELTA_TIME VALUES (11,12,22);
INSERT INTO DELTA_TIME VALUES (12,10,48);


