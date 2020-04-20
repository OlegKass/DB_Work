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

INSERT INTO Org_countries(Org_country_name)
VALUES('Spain');
INSERT INTO Org_countries(Org_country_name)
VALUES('Switzerland');
INSERT INTO Org_countries(Org_country_name)
VALUES('Sweden');

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

INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('London', 'United Kingdom');
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('Madrid', 'Spain');
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('Berne', 'Switzerland');
INSERT INTO Org_city(Org_city_name, Org_country_name)
VALUES('Stockholm', 'Sweden');

-- Organization
INSERT INTO Organization(laureat_id, org_name, Org_city_name)
VALUES(160, 'Berlin University','Berlin');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(294, 'University College','Liverpool');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(2, 'Leiden University','Leiden');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(4, 'École Polytechnique','Paris');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(296, 'Military Medical Academy','St. Petersburg');

INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(8, 'Royal Institution of Great Britain','London');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(299, 'Madrid University','Madrid');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(300, 'Institut Pasteur','Paris');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(303, 'Berne University','Berne');
INSERT INTO Organization(laureat_id,org_name, Org_city_name)
VALUES(162, 'Stockholm University','Stockholm');


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

INSERT INTO Birth_country(Birth_country_name)
VALUES('Spain');
INSERT INTO Birth_country(Birth_country_name)
VALUES('Switzerland');
INSERT INTO Birth_country(Birth_country_name)
VALUES('Sweden');




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



INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Langford Grove', 'United Kingdom');
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Petilla de Aragó', 'Spain');
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Berne', 'Switzerland');
INSERT INTO Birth_city(Birth_city_name, Birth_country_name)
VALUES('Vik', 'Sweden');

-- Birth
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(160,'Berlin', TO_Date('1853-08-30', 'YYYY-MM-DD' ));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(294,'Liverpool',TO_Date('1857-05-13', 'YYYY-MM-DD'));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(2,'Leiden',TO_Date( '1853-07-18', 'YYYY-MM-DD'));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(4,'Paris',TO_Date ('1852-12-15', 'YYYY-MM-DD'));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(296,'St. Petersburg', TO_Date('1849-09-14', 'YYYY-MM-DD'));

INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(8, 'Langford Grove',TO_Date('1842-11-12', 'YYYY-MM-DD'));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(299, 'Petilla de Aragó',TO_Date('1852-05-01', 'YYYY-MM-DD'));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(300, 'Paris',TO_Date('1845-06-18', 'YYYY-MM-DD'));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(303, 'Berne',TO_Date('1841-08-25', 'YYYY-MM-DD'));
INSERT INTO Birth(laureat_id,Birth_city_name, Birth_date)
VALUES(162, 'Vik',TO_Date('1859-02-19', 'YYYY-MM-DD'));


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


INSERT INTO Death_country(Death_country_name)
VALUES('Spain');
INSERT INTO Death_country(Death_country_name)
VALUES('Switzerland');
INSERT INTO Death_country(Death_country_name)
VALUES('Sweden');

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

INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('', 'United Kingdom');
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('Madrid', 'Spain');
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('Berne', 'Switzerland');
INSERT INTO Death_city(Death_city_name, Death_country_name)
VALUES('Stockholm', 'Sweden');


-- Death
INSERT INTO Death(laureat_id, Death_city_name, Death_date)
VALUES(160,'Berlin', TO_DATE('1911-03-01', 'YYYY-MM-DD'));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(294,'Liverpool', TO_DATE('1932-09-16','YYYY-MM-DD' ));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(2,'Leiden', TO_DATE('1928-02-04', 'YYYY-MM-DD'));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(4,'Paris', TO_DATE('1908-08-25', 'YYYY-MM-DD'));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(296,'St. Petersburg', TO_DATE('1936-02-27', 'YYYY-MM-DD'));

INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(8,'', TO_DATE('1919-06-30', 'YYYY-MM-DD'));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(299,'Madrid', TO_DATE('1934-10-17', 'YYYY-MM-DD'));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(300,'Paris', TO_DATE('1922-05-18', 'YYYY-MM-DD'));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(303,'Berne', TO_DATE('1917-07-27', 'YYYY-MM-DD'));
INSERT INTO Death(laureat_id,Death_city_name, Death_date)
VALUES(162,'Stockholm', TO_DATE('1927-10-02', 'YYYY-MM-DD'));


--Laureat
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(160, 'Jacobus Henricus vant Hoff1', 'Male', 1901, '"in recognition of the extraordinary services he has rendered by the discovery of the laws of chemical dynamics and osmotic pressure in solutions"', 'Chemistry');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(294, 'Ronald Ross', 'Male', 1902, '"for his work on malaria, by which he has shown how it enters the organism and thereby has laid the foundation for successful research on this disease and methods of combating it"','Literature');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(2, 'Hendrik Antoon Lorentz', 'Male', 1902, '"in recognition of the extraordinary service they rendered by their researches into the influence of magnetism upon radiation phenomena"','Physics');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(4, 'Antoine Henri Becquerel', 'Male', 1903, '"in recognition of the extraordinary services he has rendered by his discovery of spontaneous radioactivity"', 'Physics');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(296, 'Ivan Petrovich Pavlov', 'Male', 1904, '"in recognition of his work on the physiology of digestion, through which knowledge on vital aspects of the subject has been transformed and enlarged"', 'Medicine');


INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(8, 'Lord Rayleigh (John William Strutt)', 'Male', 1904, '"for his investigations of the densities of the most important gases and for his discovery of argon in connection with these studies"', 'Physics');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(299, 'Santiago Ramón y Cajal', 'Male', 1906, '"in recognition of their work on the structure of the nervous system"', 'Medicine');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(300, 'Charles Louis Alphonse Laveran', 'Male', 1906, '"in recognition of his work on the role played by protozoa in causing diseases"', 'Medicine');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(303, 'Emil Theodor Kocher', 'Male', 1909, '"for his work on the physiology, pathology and surgery of the thyroid gland"', 'Medicine');
INSERT INTO Laureat(laureat_id, full_name, sex, reward_year, motivation, Category_name)
VALUES(162, 'Svante August Arrhenius', 'Male', 1903, '"in recognition of the extraordinary services he has rendered to the advancement of chemistry by his electrolytic theory of dissociation"', 'Chemistry');





