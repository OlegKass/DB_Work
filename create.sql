CREATE TABLE Org_countries(
    Org_country_name VARCHAR(63) NOT NULL PRIMARY KEY
    );

CREATE  TABLE Org_city(
    Org_city_name VARCHAR(63) NOT NULL PRIMARY KEY,
    Org_country_name VARCHAR(63) NOT NULL,
    constraint fk_Org_city FOREIGN KEY (Org_country_name) REFERENCES Org_countries(Org_country_name)
    ); 
    
 CREATE TABLE Organization(
    Org_name VARCHAR(63) NOT NULL PRIMARY KEY ,
    Org_city_name VARCHAR(63) NOT NULL,
    constraint fk_Organization FOREIGN KEY (Org_city_name) REFERENCES Org_city(Org_city_name)
    );

CREATE TABLE Birth_country(
    Birth_country_name VARCHAR(63) NOT NULL PRIMARY KEY
    );
    
CREATE TABLE Birth_city(
    Birth_city_name VARCHAR(63) NOT NULL PRIMARY KEY,
    Birth_country_name VARCHAR(63) NOT NULL,
    Constraint fk_Birth_city FOREIGN KEY (Birth_country_name) REFERENCES Birth_country(Birth_country_name)
    );   

Create Table Birth(
    Birth_date Date NOT NULL PRIMARY KEY,
    Birth_city_name VARCHAR(63) NOT NULL,
    constraint fk_Birth FOREIGN KEY (Birth_city_name)REFERENCES Birth_city(Birth_city_name)
);

CREATE TABLE Death_country(
    Death_country_name VARCHAR(63) NOT NULL PRIMARY KEY
    );
    
CREATE TABLE Death_city (
    Death_city_name VARCHAR(63) NOT NULL PRIMARY KEY,
    Death_country_name VARCHAR(63) NOT NULL,
    constraint fk_Death_city FOREIGN KEY (Death_country_name) REFERENCES Death_country(Death_country_name)
    );   

Create Table Death(
    Death_date Date NOT NULL PRIMARY KEY ,
    Death_city_name VARCHAR(63) NOT NULL ,
    constraint fk_Death FOREIGN KEY (Death_city_name) REFERENCES Death_city(Death_city_name)
);

CREATE TABLE Categories(
    Category_name VARCHAR(63) NOT NULL PRIMARY KEY
    );
    
    
Create Table Laureat(
    Laureat_id NUMBER(20) NOT NULL PRIMARY KEY,
    Full_name VARCHAR(63) NOT NULL,
    Sex VARCHAR(14) NOT NULL,
    Reward_year NUMBER(38) NOT NULL,
    Motivation Clob NOT NULL ,
    Birth_date Date NOT NULL REFERENCES Birth(Birth_date) ,
    Death_date Date NOT NULL REFERENCES Death(Death_date) ,
    Org_name VARCHAR(63) NOT NULL REFERENCES Organization(Org_name),
    Category_name VARCHAR(63) NOT NULL REFERENCES Categories(Category_name) 
);

