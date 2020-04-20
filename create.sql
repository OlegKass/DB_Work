CREATE TABLE Org_countries(
    Org_country_name VARCHAR(63) PRIMARY KEY
    );

CREATE  TABLE Org_city(
    Org_city_name VARCHAR(63)  PRIMARY KEY,
    Org_country_name VARCHAR(63) ,
    constraint fk_Org_city FOREIGN KEY (Org_country_name) REFERENCES Org_countries(Org_country_name)
    ); 
    
CREATE TABLE Organization(
    Laureat_id NUMBER(20) NOT NULL Primary Key,
    Org_name VARCHAR(63)  ,
    Org_city_name VARCHAR(63),
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
    Laureat_id NUMBER(20) NOT NULL Primary Key,
    Birth_date Date NOT NULL,
    Birth_city_name VARCHAR(63) NOT NULL,
    constraint fk_Birth FOREIGN KEY (Birth_city_name)REFERENCES Birth_city(Birth_city_name)
);

CREATE TABLE Death_country(
    Death_country_name VARCHAR(63)  PRIMARY KEY
    );
    
CREATE TABLE Death_city (
    Death_city_name VARCHAR(63)  PRIMARY KEY,
    Death_country_name VARCHAR(63) ,
    constraint fk_Death_city FOREIGN KEY (Death_country_name) REFERENCES Death_country(Death_country_name)
    );   

Create Table Death(
    Laureat_id NUMBER(20) Primary Key ,
    Death_date Date  ,
    Death_city_name VARCHAR(63)  ,
    constraint fk_Death FOREIGN KEY (Death_city_name) REFERENCES Death_city(Death_city_name)
);

CREATE TABLE Categories(
    Category_name VARCHAR(63) NOT NULL PRIMARY KEY
    );
    
    
Create Table Laureat(
    Laureat_id NUMBER(20) PRIMARY KEY NOT NULL,
    Full_name VARCHAR(63) NOT NULL,
    Sex VARCHAR(14) NOT NULL,
    Reward_year NUMBER(38) NOT NULL,
    Motivation Clob ,
    Category_name VARCHAR(63) NOT NULL REFERENCES Categories(Category_name),
    constraint fk_Laureat_org  FOREIGN KEY (Laureat_id) REFERENCES Organization(Laureat_id),
    constraint fk_Laureat_birth FOREIGN KEY (Laureat_id) REFERENCES Birth(Laureat_id),
    constraint fk_Laureat_death FOREIGN KEY (Laureat_id) REFERENCES Death(Laureat_id)
);
