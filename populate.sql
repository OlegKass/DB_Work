-- Category
INSERT INTO Category(Category)
VALUES('Chemistry');
INSERT INTO Category(Category)
VALUES('Literature');
INSERT INTO Category(Category)
VALUES('Medicine');
INSERT INTO Category(Category)
VALUES('Peace');
INSERT INTO Category(Category)
VALUES('Physics');

-- Org_country
INSERT INTO Org_country(Org_country)
VALUES('Germany');
INSERT INTO Org_country(Org_country)
VALUES('United Kingdom');
INSERT INTO Org_country(Org_country)
VALUES('Netherlands');
INSERT INTO Org_country(Org_country)
VALUES('France');
INSERT INTO Org_country(Org_country)
VALUES('Russia');


-- Org_city
INSERT INTO Org_country(Org_city, Org_country)
VALUES('Berlin', 'Germany');
INSERT INTO Org_country(Org_city, Org_country)
VALUES('Liverpool', 'United Kingdom');
INSERT INTO Org_country(Org_city, Org_country)
VALUES('Leiden', 'Netherlands');
INSERT INTO Org_country(Org_city, Org_country)
VALUES('Paris', 'France');
INSERT INTO Org_country(Org_city, Org_country)
VALUES('St. Petersburg', 'Russia');


-- Org_name
INSERT INTO Org_name(laureat_id, org_name, org_city)
VALUES(160,'Berlin University','Berlin');
INSERT INTO Org_name(laureat_id, org_name, org_city)
VALUES(294,'University College','Liverpool');
INSERT INTO Org_name(laureat_id, org_name, org_city)
VALUES(2,'Leiden University','Leiden');
INSERT INTO Org_name(laureat_id, org_name, org_city)
VALUES(4,'École Polytechnique','Paris');
INSERT INTO Org_name(laureat_id, org_name, org_city)
VALUES(296,'Military Medical Academy','St. Petersburg');


-- Birth_country
INSERT INTO Birth_country(Birth_country)
VALUES('Germany');
INSERT INTO Birth_country(Birth_country)
VALUES('United Kingdom');
INSERT INTO Birth_country(Birth_country)
VALUES('Netherlands');
INSERT INTO Birth_country(Birth_country)
VALUES('France');
INSERT INTO Birth_country(Birth_country)
VALUES('Russia');


-- Birth_city
INSERT INTO Birth_city(Birth_city, Birth_country)
VALUES('Berlin', 'Germany');
INSERT INTO Birth_city(Birth_city, Birth_country)
VALUES('Liverpool', 'United Kingdom');
INSERT INTO Birth_city(Birth_city, Birth_country)
VALUES('Leiden', 'Netherlands');
INSERT INTO Birth_city(Birth_city, Birth_country)
VALUES('Paris', 'France');
INSERT INTO Birth_city(Birth_city, Birth_country)
VALUES('St. Petersburg', 'Russia');


-- Birth
INSERT INTO Birth(Birth_city, Birth_date)
VALUES('Berlin', '1852-08-30');
INSERT INTO Birth(Birth_city, Birth_date)
VALUES('Liverpool', '1857-05-13');
INSERT INTO Birth(Birth_city, Birth_date)
VALUES('Leiden', '1853-07-18');
INSERT INTO Birth(Birth_city, Birth_date)
VALUES('Paris', '1852-12-15');
INSERT INTO Birth(Birth_city, Birth_date)
VALUES('St. Petersburg', '1849-09-14');


-- Death_country
INSERT INTO Death_country(Death_country)
VALUES('Germany');
INSERT INTO Death_country(Death_country)
VALUES('United Kingdom');
INSERT INTO Death_country(Death_country)
VALUES('Netherlands');
INSERT INTO Death_country(Death_country)
VALUES('France');
INSERT INTO Death_country(Death_country)
VALUES('Russia');


-- Death_city
INSERT INTO Death_city(Death_city, Death_country)
VALUES('Berlin', 'Germany');
INSERT INTO Death_city(Death_city, Death_country)
VALUES('Liverpool', 'United Kingdom');
INSERT INTO Death_city(Death_city, Death_country)
VALUES('Leiden', 'Netherlands');
INSERT INTO Death_city(Death_city, Death_country)
VALUES('Paris', 'France');
INSERT INTO Death_city(Death_city, Death_country)
VALUES('St. Petersburg', 'Russia');


-- Death
INSERT INTO Death(Death_city, Death_date)
VALUES('Berlin', '1911-03-01');
INSERT INTO Death(Death_city, Death_date)
VALUES('Liverpool', '1932-09-16');
INSERT INTO Death(Death_city, Death_date)
VALUES('Leiden', '1928-02-04');
INSERT INTO Death(Death_city, Death_date)
VALUES('Paris', '1908-08-25');
INSERT INTO Death(Death_city, Death_date)
VALUES('St. Petersburg', '1936-02-27');


--Laureat
INSERT INTO Laureat(lareat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, category)
VALUES(160, 'Jacobus Henricus vant Hoff1', 'Male', 1901, '"in recognition of the extraordinary services he has rendered by the discovery of the laws of chemical dynamics and osmotic pressure in solutions"', '1852-08-30','1911-03-01','Berlin University','Chemistry');
INSERT INTO Laureat(lareat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, category)
VALUES(294, 'Ronald Ross', 'Male', 1902, '"for his work on malaria, by which he has shown how it enters the organism and thereby has laid the foundation for successful research on this disease and methods of combating it"', '1857-05-13','1932-09-16','University College','Literature');
INSERT INTO Laureat(lareat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, category)
VALUES(2, 'Hendrik Antoon Lorentz', 'Male', 1902, '"in recognition of the extraordinary service they rendered by their researches into the influence of magnetism upon radiation phenomena"', '1853-07-18','1928-02-04','Leiden University','Physics');
INSERT INTO Laureat(lareat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, category)
VALUES(4, 'Antoine Henri Becquerel', 'Male', 1903, '"in recognition of the extraordinary services he has rendered by his discovery of spontaneous radioactivity"', '1852-12-15','1908-08-25','École Polytechnique','Physics');
INSERT INTO Laureat(lareat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, category)
VALUES(296, 'Ivan Petrovich Pavlov', 'Male', 1904, '"in recognition of his work on the physiology of digestion, through which knowledge on vital aspects of the subject has been transformed and enlarged"', '1849-09-14','1936-02-27','Military Medical Academy','Medicine');
