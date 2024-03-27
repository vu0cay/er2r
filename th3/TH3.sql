CREATE TABLE TACPHAM(
	NT 		smallint primary key ,
	tua 		varchar(150),
	tacgia 		varchar(100)
) ;

CREATE TABLE DOCGIA (
	ND		smallint PRIMARY KEY ,
	ho		VARCHAR(30),
	ten		VARCHAR(30),
	dchi	VARCHAR(100),
	tel		CHAR(10)
) ;

CREATE TABLE SACH (
	NS		smallint primary key ,
	nxb		varchar(50),
	NT		smallint not null, 
 	foreign key(NT) references TACPHAM(NT)
);

CREATE TABLE MUON (
	NS		smallint not NULL, 
	foreign key(NS) references SACH(NS),
	ngaymuon	date not NULL,
	hantra	date not null,
	ngaytra 	date,
	ND		smallint not null, 
	foreign key(ND) references DOCGIA(ND),
	primary key 	(NS, ngaymuon)
) ;


INSERT INTO TACPHAM VALUES (1,'Les miserables','Victor Hugo');
INSERT INTO TACPHAM VALUES (2,'Germinal ','Emile Zola');
INSERT INTO TACPHAM VALUES (3,'Madame Bovary','Gustave Flaubert');
INSERT INTO TACPHAM VALUES (4,'Les Fleurs du mal','Charles Baudelaire');
INSERT INTO TACPHAM VALUES (5,'La Bete Humaine','Emile Zola');
INSERT INTO TACPHAM VALUES (6,'Le Pere Goriot ','Honore de Balzac');
INSERT INTO TACPHAM VALUES (7,'Le Rouge et le Noir','Stendhal');
INSERT INTO TACPHAM VALUES (8,'Une vie','Guy de Maupassant');
INSERT INTO TACPHAM VALUES (9,'Ubu Roi','Alfred Jarry');
INSERT INTO TACPHAM VALUES (10,'Po?e','Arthur Rimbaud');
INSERT INTO TACPHAM VALUES (11,'La Mare au Diable','George Sand');
INSERT INTO TACPHAM VALUES (12,'Carmen','Prosper Merimee');
INSERT INTO TACPHAM VALUES (13,'Lettres de mon moulin','Alphonse Daudet');
INSERT INTO TACPHAM VALUES (14,'Les contes du chat perché', 'Marcel Ayme');
INSERT INTO TACPHAM VALUES (15,'La Peste','Albert Camus');
INSERT INTO TACPHAM VALUES (16,'Le petit prince','Antoine de St Exupery');


INSERT INTO DOCGIA VALUES (1,'Lecoeur','Jeanette','16 rue de la R?blique, 75010 Paris','0145279274');
INSERT INTO DOCGIA VALUES (2,'Lecoeur','Philippe','16 rue de la R?blique, 75010 Paris','0145279274');
INSERT INTO DOCGIA VALUES (3,'Dupont','Yvan','73 rue Lamarck, 75018 Paris','0163538294');
INSERT INTO DOCGIA VALUES (4,'Mercier','Claude','155 avenue Parmentier, 75011 Paris','0136482736');
INSERT INTO DOCGIA VALUES (5,'L?r','Marc','90 avenue du Maine, 75014 Paris','0164832947');
INSERT INTO DOCGIA VALUES (6,'Martin','Laure','51 boulevard Diderot, 75012 Paris','0174693277');
INSERT INTO DOCGIA VALUES (7,'Crozier','Martine','88 rue des Portes Blanches, 75018 Paris','0146829384');
INSERT INTO DOCGIA VALUES (8,'Lebon','Cl?nt','196 boulevard de Sebastopol, 75001 Paris','0132884739');
INSERT INTO DOCGIA VALUES (9,'Dufour','Jacques','32 rue des Alouettes, 75003 Paris','0155382940');
INSERT INTO DOCGIA VALUES (10,'Dufour','Antoine','32 rue des Alouettes, 75003 Paris','0155382940');
INSERT INTO DOCGIA VALUES (11,'Dufour','St?anie','32 rue des Alouettes, 75003 Paris','0155382940');
INSERT INTO DOCGIA VALUES (12,'Raymond','Carole','35 rue Oberkampf, 75011 Paris','0153829402');
INSERT INTO DOCGIA VALUES (13,'Durand','Albert','4 rue Mandar, 75002 Paris','0642374021');
INSERT INTO DOCGIA VALUES (14,'Wilson','Paul','12 rue Paul Vaillant Couturier, 92400 Montrouge','0642327407');
INSERT INTO DOCGIA VALUES (15,'Grecault','Philippe','15 rue de la Roquette, 75012 Paris','0132762983');
INSERT INTO DOCGIA VALUES (16,'Carre','St?ane','51 boulevard Diderot, 75012 Paris','0174693277');
INSERT INTO DOCGIA VALUES (17,'Johnson','Astrid','3 rue L? Blum, 75002 Paris','0143762947');
INSERT INTO DOCGIA VALUES (18,'Mirou','Caroline','2 square Mirabeau, 75011 Paris','0163827399');
INSERT INTO DOCGIA VALUES (19,'Espelette','Jean-Jacques','141 avenue de France, 75019 Paris','0134887264');
INSERT INTO DOCGIA VALUES (20,'Despentes','Anthony','56 boulevard de la Villette, 75019 Paris','0133889463');
INSERT INTO DOCGIA VALUES (21,'Terlu','V?nique','45 rue des Batignolles, 75020 Paris','0165998372');
INSERT INTO DOCGIA VALUES (22,'Rihour','C?le','7 rue Montorgueil, 75002 Paris','0166894754');
INSERT INTO DOCGIA VALUES (23,'Franchet','Pierre','160 rue Montmartre, 75009 Paris','0633628549');
INSERT INTO DOCGIA VALUES (24,'Trochet','Ernest','34 rue de l''Esperance, 75008 Paris','0638295563');
INSERT INTO DOCGIA VALUES (25,'Gainard','Simon','55 rue Desnouettes, 75015 Paris','0174928934');
INSERT INTO DOCGIA VALUES (26,'Touche','Johanna','14 rue du Bac, 75006 Paris','0619384065');
INSERT INTO DOCGIA VALUES (27,'Cornu','Sylvain','22 rue Mouffetard, 75005 Paris','0184927489');
INSERT INTO DOCGIA VALUES (28,'Frederic','Cyril','15 rue du Simplon, 75018 Paris','0173625492');
INSERT INTO DOCGIA VALUES (29,'Crestard','Cedric','5 rue Doudeauville, 75018 Paris','0629485700');
INSERT INTO DOCGIA VALUES (30,'Le Bihan','Karine','170 bis rue Ordener, 75018 Paris','0638995221');


INSERT INTO SACH VALUES (1,'GF',1);
INSERT INTO SACH VALUES (2,'FOLIO',2);
INSERT INTO SACH VALUES (3,'HACHETTE',3);
INSERT INTO SACH VALUES (4,'GF',4);
INSERT INTO SACH VALUES (5,'FOLIO',5);
INSERT INTO SACH VALUES (6,'FOLIO',6);
INSERT INTO SACH VALUES (7,'GF',7);
INSERT INTO SACH VALUES (8,'FOLIO',8);
INSERT INTO SACH VALUES (9,'HACHETTE',9);
INSERT INTO SACH VALUES (10,'GF',10);
INSERT INTO SACH VALUES (11,'HACHETTE',11);
INSERT INTO SACH VALUES (12,'FOLIO',12);
INSERT INTO SACH VALUES (13,'GF',13);
INSERT INTO SACH VALUES (14,'FOLIO',14);
INSERT INTO SACH VALUES (15,'HACHETTE',15);
INSERT INTO SACH VALUES (16,'HACHETTE',16);
INSERT INTO SACH VALUES (17,'GF',1);
INSERT INTO SACH VALUES (18,'FOLIO',2);
INSERT INTO SACH VALUES (19,'HACHETTE',2);
INSERT INTO SACH VALUES (20,'FOLIO',4);
INSERT INTO SACH VALUES (21,'GF',5);
INSERT INTO SACH VALUES (22,'HACHETTE',4);
INSERT INTO SACH VALUES (23,'HACHETTE',7);
INSERT INTO SACH VALUES (24,'FOLIO',8);
INSERT INTO SACH VALUES (25,'GF',1);
INSERT INTO SACH VALUES (26,'HACHETTE',10);
INSERT INTO SACH VALUES (27,'FOLIO',11);
INSERT INTO SACH VALUES (28,'FOLIO',12);
INSERT INTO SACH VALUES (29,'GF',1);
INSERT INTO SACH VALUES (30,'HACHETTE',14);

INSERT INTO MUON VALUES (1,'9-2-2007','9-16-2007','9-7-2007',1);
INSERT INTO MUON VALUES (1,'10-1-2006','10-15-2006','10-11-2006',26);
INSERT INTO MUON VALUES (1,'6-14-2007','6-28-2007','6-19-2007',2);

INSERT INTO MUON VALUES (1,'4-27-2007','5-11-2007','5-8-2007',3);
INSERT INTO MUON VALUES (2,'8-23-2007','9-6-2007','9-2-2007',4);
INSERT INTO MUON VALUES (2,'10-6-2007','10-20-2007', NULL,28);

INSERT INTO MUON VALUES (9,'10-6-2007','10-20-2007', NULL,28);
INSERT INTO MUON VALUES (3,'9-9-2007','9-23-2007','9-13-2007',3);
INSERT INTO MUON VALUES (4,'2-8-2007','2-22-2007','2-12-2007',12);
INSERT INTO MUON VALUES (4,'2-7-2006','2-21-2006','2-20-2006',4);

INSERT INTO MUON VALUES (4,'6-17-2007','7-1-2007','6-27-2007',5);
INSERT INTO MUON VALUES (5,'10-4-2007','10-19-2007', NULL,16);
INSERT INTO MUON VALUES (6,'3-11-2007','3-25-2007','3-16-2007',3);

INSERT INTO MUON VALUES (8,'7-14-2007','7-28-2007','7-20-2007',18);
INSERT INTO MUON VALUES (8,'3-9-2007','3-23-2007','3-27-2007',13);

INSERT INTO MUON VALUES (10,'4-11-2007','4-25-2007','4-23-2007',8);
INSERT INTO MUON VALUES (10,'1-27-2006','2-10-2006','1-31-2006',7);
INSERT INTO MUON VALUES (11,'10-1-2007','10-15-2007', NULL,22);

INSERT INTO MUON VALUES (12,'3-3-2003','3-17-2003','3-13-2003',7);
INSERT INTO MUON VALUES (14,'10-2-2007','10-16-2007', NULL,1);
INSERT INTO MUON VALUES (15,'5-4-2007','5-18-2007','5-12-2007',10);

INSERT INTO MUON VALUES (16,'10-5-2007','10-19-2007', NULL,2);
INSERT INTO MUON VALUES (18,'7-4-2007','7-18-2007','7-11-2007',3);
INSERT INTO MUON VALUES (20,'12-17-2006','12-31-2006','12-17-2006',27);

INSERT INTO MUON VALUES (20,'9-6-2007','9-20-2007','9-22-2007',9);
INSERT INTO MUON VALUES (21,'9-7-2007','9-21-2007','9-19-2007',14);
INSERT INTO MUON VALUES (24,'2-14-2007','2-28-2007','2-20-2007',26);
INSERT INTO MUON VALUES (25,'8-19-2006','9-2-2006','9-3-2006',1);
INSERT INTO MUON VALUES (26,'11-15-2006','11-29-2006','11-22-2006',9);
INSERT INTO MUON VALUES (29,'9-20-2007','10-4-2007', NULL,27);

--c1
select * from tacpham;
select * from docgia;
select * from sach;
select * from muon;
--c2
--c3
select *
from TACPHAM
where tacgia like 'Guy de Maupassant';
--c4
select *
from DOCGIA
where dchi like '32 rue des Alouettes, 75003 Paris';
--c5
select nxb
from TACPHAM T join SACH S on T.NT = S.NT
where tua like '%Fleur%';
--c6
select tua
from TACPHAM
where tua like 'Le%';
--c7
select ho,ten
from DOCGIA D join MUON M on D.ND = M.ND
where extract (year from ngaymuon) = 2007
    and extract (month from ngaymuon) = 9
    and extract (day from ngaymuon) between 15 and 20;
--c8
select nxb
from TACPHAM T join SACH S on T.NT = S.NT
where tua like '%Germinal%';
--c9
select ho,ten
from DOCGIA D join MUON M on D.ND = M.ND
    join SACH S on M.NS = S.NS 
    join TACPHAM T on T.NT = S.NT
where tua like 'Po?e';
--c10
select D.*
from DOCGIA D join MUON M on D.ND = M.ND
    join SACH S on M.NS = S.NS 
    join TACPHAM T on T.NT = S.NT
where tua like 'Les Fleurs du mal';
--c11
select tua,ho,ten,ngaytra,hantra
from DOCGIA D join MUON M on D.ND = M.ND
    join SACH S on M.NS = S.NS 
    join TACPHAM T on T.NT = S.NT
where ngaytra > hantra;
--c12
select tua,ho,ten,ngaytra,hantra
from DOCGIA D join MUON M on D.ND = M.ND
    join SACH S on M.NS = S.NS 
    join TACPHAM T on T.NT = S.NT
where ngaytra < hantra;
--c13
select ho,ten
from DOCGIA D join MUON M on D.ND = M.ND
    join SACH S on M.NS = S.NS 
    join TACPHAM T on T.NT = S.NT
where tacgia like 'Victor Hugo';
--c14
select ho,ten,T.*
from DOCGIA D join MUON M on D.ND = M.ND
    join SACH S on M.NS = S.NS 
    join TACPHAM T on T.NT = S.NT
where extract(year from ngaymuon) = 2007;
--c15
select count(*) countT
from TACPHAM;
--c16
select T.NT, tua, count(*) sosach
from TACPHAM T Join SACH S on T.NT = S.NT
GROUP BY T.NT, tua having count(*) >= 2
order by T.NT;
--c17
select tacgia, count(*) sotacpham
from tacpham
GROUP BY tacgia;
--check c17
select *
from TACPHAM T Join SACH S on T.NT = S.NT
order by T.NT;
--c18
select T.NT, tua, count(*) sosach
from TACPHAM T Join SACH S on T.NT = S.NT
GROUP BY T.NT, tua
order by T.NT;
--c19
select ND, extract(year from ngaymuon) nam, count(*) solanmuon
from muon
group by ND, extract(year from ngaymuon)
order by ND;
--20
select T.NT, tua, count(*) sosach
from TACPHAM T Join SACH S on T.NT = S.NT
GROUP BY T.NT, tua having count(*) > 2
order by T.NT;
--21
CREATE TABLE C21 AS
    select T.NT, tua, count(*) sosach
    from TACPHAM T Join SACH S on T.NT = S.NT
    GROUP BY T.NT, tua having count(*) > 2
    order by T.NT;
select tua
from c21
where sosach = (select max(sosach) m from c21);
--22
CREATE TABLE c22 as
    select nxb, count(*) sosachxb
    from SACH
    group by nxb;
select nxb
from c22
where sosachxb = (select max(sosachxb) m from c22);
--23
select tacgia, count(*) sotacpham
from TACPHAM
group by tacgia having count(*) >= 2;
--24
create table c24 as
    select tua, count(distinct ND) sotacpham
    from TACPHAM T join SACH S on T.NT = S.NT
        join MUON M on M.NS = S.NS
    group by tua;
select *
from c24
where sotacpham = (select max(sotacpham) m from c24);
--25
create table c25 as
    select tua, count(distinct ND) sotacpham
    from TACPHAM T join SACH S on T.NT = S.NT
        join MUON M on M.NS = S.NS
    group by tua;
select *
from c25
where sotacpham = (select min(sotacpham) m from c25);
--26
create table c26 as 
    select ho, ten, count(distinct NS) sosachmuon
    from DOCGIA D join MUON M on D.ND = M.ND
    group by ho, ten;
select *
from c26
where sosachmuon = (select max(sosachmuon) m from c26);
--c27
select *
from c26
where sosachmuon = (select min(sosachmuon) m from c26);
--c28
select tua
from tacpham T join sach S on T.NT = S.NT
    left join muon M on S.NS = M.NS
where ngaymuon is NULL
order by S.NT;
--c29
select tua
from tacpham 
where NT not in (select T.NT
                from tacpham T join sach S on T.NT = S.NT
                left join muon M on S.NS = M.NS
                where ngaymuon is NULL);
--c30

select ho,ten
from docgia D left join muon M on D.ND = M.ND
where NS is NULL;
--c31
select nxb
from sach S left join muon M on S.NS = M.NS
where M.NS is NULL;

