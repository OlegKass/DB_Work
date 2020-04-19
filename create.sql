CREATE TABLE Org_countries(
    Org_country_name VARCHAR(63) NOT NULL PRIMARY KEY
    );

CREATE  TABLE Org_city(
    Org_city_name VARCHAR(63) NOT NULL PRIMARY KEY,
    Org_country_name VARCHAR(63) NOT NULL,
    constraint fk_Org_city FOREIGN KEY (Org_country_name) REFERENCES Org_countries(Org_country_name)
    ); 
    
CREATE TABLE Organization(
    Laureat_id NUMBER(20) NOT NULL ,
    Org_name VARCHAR(63) NOT NULL ,
    Org_city_name VARCHAR(63) NOT NULL,
    constraint pk_organization Primary Key(Laureat_id, Org_name),
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
    Laureat_id NUMBER(20) NOT NULL,
    Birth_date Date NOT NULL,
    Birth_city_name VARCHAR(63) NOT NULL,
    constraint pk_Birth Primary Key(Laureat_id, Birth_date),
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
    Laureat_id NUMBER(20) NOT NULL ,
    Death_date Date NOT NULL ,
    Death_city_name VARCHAR(63) NOT NULL ,
    constraint pk_Death Primary Key(Laureat_id, Death_date),
    constraint fk_Death FOREIGN KEY (Death_city_name) REFERENCES Death_city(Death_city_name)
);

CREATE TABLE Categories(
    Category_name VARCHAR(63) NOT NULL PRIMARY KEY
    );
    
    
Create Table Laureat(
    Laureat_id NUMBER(20) NOT NULL,
    Full_name VARCHAR(63) NOT NULL,
    Sex VARCHAR(14) NOT NULL,
    Reward_year NUMBER(38) NOT NULL,
    Motivation Clob NOT NULL ,
    Birth_date Date NOT NULL  ,
    Death_date Date NOT NULL  ,
    Org_name VARCHAR(63) NOT NULL ,
    Category_name VARCHAR(63) NOT NULL REFERENCES Categories(Category_name),
    constraint PK_Laureat  PRIMARY KEY (Laureat_id, Org_name,Birth_date, Death_date),
    constraint fk_Laureat_org  FOREIGN KEY (Laureat_id, Org_name) REFERENCES Organization(Laureat_id, Org_name),
    constraint fk_Laureat_birth FOREIGN KEY (Laureat_id, Birth_date) REFERENCES Birth(Laureat_id, Birth_date),
    constraint fk_Laureat_death FOREIGN KEY (Laureat_id, Death_date) REFERENCES Death(Laureat_id, Death_date)
);
