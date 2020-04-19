
--Laureat
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, birth_date, death_date, org_name, Category_name)
VALUES(160, 'Jacobus Henricus vant Hoff1', 'Male', 1901, 'in recognition of the extraordinary services he has rendered by the discovery of the laws of chemical dynamics and osmotic pressure in solutions', TO_DATE('1852-08-30', 'YYYY-MM-DD'),TO_DATE('1911-03-01', 'YYYY-MM-DD'),'Berlin University','Chemistry');
INSERT INTO Laureat(laureat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, Category_name)
VALUES(294, 'Ronald Ross', 'Male', 1902, '"for his work on malaria, by which he has shown how it enters the organism and thereby has laid the foundation for successful research on this disease and methods of combating it"', TO_DATE('1857-05-13', 'YYYY-MM-DD'),TO_DATE('1932-09-16','YYYY-MM-DD'),'University College','Literature');
INSERT INTO Laureat(laureat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, Category_name)
VALUES(2, 'Hendrik Antoon Lorentz', 'Male', 1902, '"in recognition of the extraordinary service they rendered by their researches into the influence of magnetism upon radiation phenomena"', TO_DATE('1853-07-18', 'YYYY-MM-DD'),TO_DATE('1928-02-04', 'YYYY-MM-DD'),'Leiden University','Physics');
INSERT INTO Laureat(laureat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, Category_name)
VALUES(4, 'Antoine Henri Becquerel', 'Male', 1903, '"in recognition of the extraordinary services he has rendered by his discovery of spontaneous radioactivity"', TO_DATE('1852-12-15', 'YYYY-MM-DD'),TO_DATE('1908-08-25', 'YYYY-MM-DD'),'École Polytechnique','Physics');
INSERT INTO Laureat(laureat_id, full_name, sex, year, motivation, birth_date, death_date, org_name, Category_name)
VALUES(296, 'Ivan Petrovich Pavlov', 'Male', 1904, '"in recognition of his work on the physiology of digestion, through which knowledge on vital aspects of the subject has been transformed and enlarged"', TO_DATE('1849-09-14', 'YYYY-MM-DD'),TO_DATE('1936-02-27', 'YYYY-MM-DD'),'Military Medical Academy','Medicine');



-- Category
INSERT INTO Categories(Category_name)
VALUES('Chemistry');
INSERT INTO Categories(Category_name)
VALUES('Literature');
INSERT INTO Categories(Category_name)
VALUES('Medicine');
INSERT INTO Categories(Category_name)
VALUES('Peace');
INSERT INTO Categories(Category_name)
VALUES('Physics');


-- Organization
INSERT INTO Organization(org_name, Org_city_name)
VALUES('Berlin University','Berlin');
INSERT INTO Organization(org_name, Org_city_name)
VALUES('University College','Liverpool');
INSERT INTO Organization(org_name, Org_city_name)
VALUES('Leiden University','Leiden');
INSERT INTO Organization(org_name, Org_city_name)
VALUES('École Polytechnique','Paris');
INSERT INTO Organization(org_name, Org_city_name)
VALUES('Military Medical Academy','St. Petersburg');


-- Org_city
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('Berlin', 'Germany');
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('Liverpool', 'United Kingdom');
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('Leiden', 'Netherlands');
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('Paris', 'France');
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('St. Petersburg', 'Russia');


-- Org_country
INSERT INTO Org_countries(Org_country_name)
VALUES('Germany');
INSERT INTO Org_countries(Org_country_name)
VALUES('United Kingdom');
INSERT INTO Org_countries(Org_country_name)
VALUES('Netherlands');
INSERT INTO Org_countries(Org_country_name)
VALUES('France');
INSERT INTO Org_countries(Org_country_name)
VALUES('Russia');

-- Birth
INSERT INTO Birth(Birth_city_name, Birth_date)
VALUES('Berlin', TO_Date('1853-08-30', 'YYYY-MM-DD' ));
INSERT INTO Birth(Birth_city_name, Birth_date)
VALUES('Liverpool',TO_Date('1857-05-13', 'YYYY-MM-DD'));
INSERT INTO Birth(Birth_city_name, Birth_date)
VALUES('Leiden',TO_Date( '1853-07-18', 'YYYY-MM-DD'));
INSERT INTO Birth(Birth_city_name, Birth_date)
VALUES('Paris',TO_Date ('1852-12-15', 'YYYY-MM-DD'));
INSERT INTO Birth(Birth_city_name, Birth_date)
VALUES('St. Petersburg', TO_Date('1849-09-14', 'YYYY-MM-DD'));

-- Birth_city
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Berlin', 'Germany');
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Liverpool', 'United Kingdom');
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Leiden', 'Netherlands');
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Paris', 'France');
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('St. Petersburg', 'Russia');


-- Birth_country
INSERT INTO Birth_country(Birth_country_name)
VALUES('Germany');
INSERT INTO Birth_country(Birth_country_name)
VALUES('United Kingdom');
INSERT INTO Birth_country(Birth_country_name)
VALUES('Netherlands');
INSERT INTO Birth_country(Birth_country_name)
VALUES('France');
INSERT INTO Birth_country(Birth_country_name)
VALUES('Russia');


-- Death
INSERT INTO Death(Death_city_name, Death_date)
VALUES('Berlin', TO_DATE('1911-03-01', 'YYYY-MM-DD'));
INSERT INTO Death(Death_city_name, Death_date)
VALUES('Liverpool', TO_DATE('1932-09-16','YYYY-MM-DD' ));
INSERT INTO Death(Death_city_name, Death_date)
VALUES('Leiden', TO_DATE('1928-02-04', 'YYYY-MM-DD'));
INSERT INTO Death(Death_city_name, Death_date)
VALUES('Paris', TO_DATE('1908-08-25', 'YYYY-MM-DD'));
INSERT INTO Death(Death_city_name, Death_date)
VALUES('St. Petersburg', TO_DATE('1936-02-27', 'YYYY-MM-DD'));


-- Death_city
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('Berlin', 'Germany');
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('Liverpool', 'United Kingdom');
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('Leiden', 'Netherlands');
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('Paris', 'France');
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('St. Petersburg', 'Russia');


-- Death_country
INSERT INTO Death_country(Death_country_name)
VALUES('Germany');
INSERT INTO Death_country(Death_country_name)
VALUES('United Kingdom');
INSERT INTO Death_country(Death_country_name)
VALUES('Netherlands');
INSERT INTO Death_country(Death_country_name)
VALUES('France');
INSERT INTO Death_country(Death_country_name)
VALUES('Russia');
