CREATE TABLE birth (
    birth_data   DATE NOT NULL,
    birth_city   CHAR(14) NOT NULL
)
LOGGING;

ALTER TABLE birth ADD CONSTRAINT birth_pk PRIMARY KEY ( birth_data );

CREATE TABLE birth_city (
    birth_city      CHAR(14) NOT NULL,
    birth_country   CHAR(14) NOT NULL
)

logging;

ALTER TABLE birth_city ADD CONSTRAINT birth_city_pk PRIMARY KEY ( birth_city );

CREATE TABLE birth_country (
    birth_country CHAR(14) NOT NULL
)

logging;

ALTER TABLE birth_country ADD CONSTRAINT birth_country_pk PRIMARY KEY ( birth_country );

CREATE TABLE category (
    category CHAR(14) NOT NULL
)

logging;

ALTER TABLE category ADD CONSTRAINT category_pk PRIMARY KEY ( category );

CREATE TABLE death (
    death_date   DATE NOT NULL,
    death_city   CHAR(14) NOT NULL
)

logging;

ALTER TABLE death ADD CONSTRAINT death_pk PRIMARY KEY ( death_date );

CREATE TABLE death_city (
    death_city      CHAR(14) NOT NULL,
    death_country   CHAR(14) NOT NULL
)

logging;

ALTER TABLE death_city ADD CONSTRAINT death_city_pk PRIMARY KEY ( death_city );

CREATE TABLE death_country (
    death_country CHAR(14) NOT NULL
)

logging;

ALTER TABLE death_country ADD CONSTRAINT death_country_pk PRIMARY KEY ( death_country );

CREATE TABLE laureat (
    laureat_id   NUMBER(2) NOT NULL,
    full_name    CHAR(14) NOT NULL,
    sex          CHAR(2),
    birth_date   DATE NOT NULL,
    death_date   DATE NOT NULL,
    org_name     CHAR(14) NOT NULL,
    category     CHAR(14) NOT NULL,
    year         NUMBER(2),
    motivation   CHAR(14)
)

logging;

ALTER TABLE laureat ADD CONSTRAINT laureat_pk PRIMARY KEY ( laureat_id );

CREATE TABLE org_city (
    org_city      CHAR(14) NOT NULL,
    org_country   CHAR(14) NOT NULL
)

logging;

ALTER TABLE org_city ADD CONSTRAINT org_city_pk PRIMARY KEY ( org_city );

CREATE TABLE org_country (
    org_country CHAR(14) NOT NULL
)

logging;

ALTER TABLE org_country ADD CONSTRAINT org_country_pk PRIMARY KEY ( org_country );

CREATE TABLE org_name (
    laureat_id   NUMBER(2) NOT NULL,
    org_name     CHAR(14) NOT NULL,
    org_city     CHAR(14) NOT NULL
)

logging;

ALTER TABLE org_name ADD CONSTRAINT org_name_pk PRIMARY KEY ( laureat_id,
                                                              org_name );

ALTER TABLE birth
    ADD CONSTRAINT birth_birth_city_fk FOREIGN KEY ( birth_city )
        REFERENCES birth_city ( birth_city )
    NOT DEFERRABLE;

ALTER TABLE birth_city
    ADD CONSTRAINT birth_city_birth_country_fk FOREIGN KEY ( birth_country )
        REFERENCES birth_country ( birth_country )
    NOT DEFERRABLE;

ALTER TABLE death_city
    ADD CONSTRAINT death_city_death_country_fk FOREIGN KEY ( death_country )
        REFERENCES death_country ( death_country )
    NOT DEFERRABLE;

ALTER TABLE death
    ADD CONSTRAINT death_death_city_fk FOREIGN KEY ( death_city )
        REFERENCES death_city ( death_city )
    NOT DEFERRABLE;

ALTER TABLE laureat
    ADD CONSTRAINT laureat_birth_fk FOREIGN KEY ( birth_date )
        REFERENCES birth ( birth_data )
    NOT DEFERRABLE;

ALTER TABLE laureat
    ADD CONSTRAINT laureat_category_fk FOREIGN KEY ( category )
        REFERENCES category ( category )
    NOT DEFERRABLE;

ALTER TABLE laureat
    ADD CONSTRAINT laureat_death_fk FOREIGN KEY ( death_date )
        REFERENCES death ( death_date )
    NOT DEFERRABLE;

ALTER TABLE laureat
    ADD CONSTRAINT laureat_org_name_fk FOREIGN KEY ( laureat_id,
                                                     org_name )
        REFERENCES org_name ( laureat_id,
                              org_name )
    NOT DEFERRABLE;

ALTER TABLE org_city
    ADD CONSTRAINT org_city_org_country_fk FOREIGN KEY ( org_country )
        REFERENCES org_country ( org_country )
    NOT DEFERRABLE;

ALTER TABLE org_name
    ADD CONSTRAINT org_name_org_city_fk FOREIGN KEY ( org_city )
        REFERENCES org_city ( org_city )
    NOT DEFERRABLE;