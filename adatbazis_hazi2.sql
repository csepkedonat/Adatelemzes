CREATE TABLE UGYFEL
(LOGIN varchar(32) PRIMARY KEY,
Email varchar(64)	MASKED WITH (Function = 'email()'),
SZULEV numeric(4) MASKED WITH (Function = 'random(1950,2025)'),
CIM varchar(128) MASKED WITH (function = 'partial(1,"XXX",1)')
)
INSERT INTO UGYFEL (LOGIN, EMAIL, SZULEV, CIM)
VALUES
('adam1','ádám.kiss@mail.hu',1991,'5630 Békés, Szolnoki út 8.'),
('adam3','adam3@gmail.com',1970,'3910 Tokaj, Dózsa György utca 37.'),
('adam4','ádám.bieniek@mail.hu',1976,'8630 Balatonboglár, Juhászföldi út 1.'),
('agnes','agnes@gmail.com',1979,'5200 Törökszentmiklós, Deák Ferenc út 5.'),
('agnes3','agnes3@gmail.com',1967,'6430 Bácsalmás, Posta köz 2.'),
('AGNESH','AGNESH@gmail.com',1981,'8200 Veszprém, Rákóczi utca 21.'),
('AGNESK','AGNESK@gmail.com',1988,'1084 Budapest, Endrődi Sándor utca 47.'),
('akos','ákos.bíró@mail.hu',1982,'9023 Győr, Kossuth Lajos utca 47/b.'),
('aladar','aladár.dunai@mail.hu',1980,'5931 Nagyszénás, Árpád utca 23.'),
('alexandra','alexandra.bagóczki@mail.hu',1992,'2381 Táborfalva, Petőfi utca 1/2.'),
('alexis','alexbiro@gmail.com',2000,'6914 Pitvaros, Deák F. u. 38.'),
('andi','andrea.maródi@mail.hu',1968,'5465 Cserkeszőlő, Árpád utca 4.'),
('andras2','andrás.tóth@mail.hu',1997,'4071 Egyek, Petőfi utca 30.'),
('andras21','andrás.molnár@mail.hu',1977,'7900 Szigetvár, Rákóczi utca 67.'),
('andras3','andrás.vígh@mail.hu',1971,'1118 Budapest, Arany János utca 1.'),
('andras4','andras4@gmail.com',1984,'3783 Edelény, Fő út 169.'),
('andras41','andras41@gmail.com',1997,'5065 Nagykörű, Kossuth út 24.'),
('ANDRASE','ANDRASE@gmail.com',1997,'5071 Besenyszög, Szolnoki út 8.'),
('ANDRASN','andrás.nagy@mail.hu',1980,'6500 Baja, Fő út 169.'),
('andrea','andrea.kiss@mail.hu',1993,'1113 Budapest, Petőfi Sándor utca 87.'),
('andrea3','andrea3@gmail.com',1996,'7960 Sellye, Bécsi utca 82.'),
('andrea4','andrea4@gmail.com',1981,'1124 Budapest, Kiss u. 8.'),
('ANDREAT','ANDREAT@gmail.com',1986,'6131 Szank, Bécsi utca 82.'),
('anett3','anett.pivarcsi@mail.hu',1967,'1149 Budapest, Fő út 60.'),
('aniko','aniko@gmail.com',1973,'2085 Pilisvörösvár, Deák Ferenc út 5.'),
('aniko4','aniko4@gmail.com',1978,'2484 Agárd, Petőfi Sándor tér 1.'),
('ANIKOS','ANIKOS@gmail.com',1988,'5137 Jászkisér, Bécsi utca 82.'),
('anita','anita.hamvay-kovács@mail.hu',1971,'7220 Sarkad, Táncsics utca 19.'),
('annamaria1','annamária.szűcs@mail.hu',1990,'1191 Budapest, Rendeki utca 21.'),
('ANNAMARIAR','ANNAMARIAR@gmail.com',1977,'8283 Káptalantóti, Petőfi Sándor tér 1.'),
('aron2','aron2@gmail.com',1971,'7133 Fadd, Bajcsy-Zsilinszky utca 4.'),
('ARONK','áron.kelemen@mail.hu',1989,'8200 Veszprém, Petőfi utca 8.'),
('arpad2','árpád.ötvös@mail.hu',1990,'4071 Egyek, Petőfi utca 30.');


CREATE USER felhasznalo WITHOUT Login;
GRANT SELECT ON UGYFEL TO felhasznalo
EXECUTE AS User= 'felhasznalo';
SELECT * FROM UGYFEL
REVERT