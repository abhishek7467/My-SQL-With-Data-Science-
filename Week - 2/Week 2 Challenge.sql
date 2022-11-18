/*

1. Write query to create table actor. 
Column Name       Data Type    			Constraint

actor_id		   SMALLINT UNSIGNED	PRIMARY KEY  
first_name		    VARCHAR(45)			NOT NULL
last_name			VARCHAR(45)			NOT NULL

*/
create database if not exists sakila2;
use sakila2;

CREATE TABLE actor (
    actor_id SMALLINT UNSIGNED,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    PRIMARY KEY (actor_id)
);
describe actor;

/*

2. Write query to create table country.

Column Name			Data Type			Constraint

country_id			SMALLINT UNSIGNED	PRIMARY KEY  
country				VARCHAR(50)			NOT NULL
last_update			TIMESTAMP 	 		NOT NULL, DEFAULT CURRENT_TIMESTAMP 

*/
CREATE TABLE country (
    country_id SMALLINT UNSIGNED PRIMARY KEY,
    country VARCHAR(50) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
describe country;
                 
                 
/* 

3. Write query to create table city.
Column Name			Data Type			Constraint

city_id			SMALLINT UNSIGNED			PRIMARY KEY  
city			VARCHAR(50)			NOT NULL
country_id			SMALLINT UNSIGNED			FOREIGN KEY (fk_city_country), country (country_id) 
last_update			TIMESTAMP			NOT NULL, DEFAULT CURRENT_TIMESTAMP 
*/


CREATE TABLE city (
    city_id SMALLINT UNSIGNED PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    country_id SMALLINT UNSIGNED NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `fk_city_country` FOREIGN KEY (country_id)
        REFERENCES country (country_id)
);

describe city;
                     
              
              
              
/*
4. Write query to create table address.
Column Name		Data Type		Constraint

address_id		SMALLINT UNSIGNED		PRIMARY KEY  
address		VARCHAR(50)		NOT NULL
address2		VARCHAR(50)		DEFAULT NULL
district		VARCHAR(20)		NOT NULL
city_id		SMALLINT UNSIGNED		FOREIGN KEY (fk_address_city), city (city_id) 
postal_code		VARCHAR(10) 		DEFAULT NULL
phone		VARCHAR(20)		NOT NULL
last_update		TIMESTAMP		NOT NULL, DEFAULT CURRENT_TIMESTAMP 

*/

CREATE TABLE address (
    address_id SMALLINT UNSIGNED PRIMARY KEY,
    address VARCHAR(50) NOT NULL,
    address2 VARCHAR(50) DEFAULT NULL,
    district VARCHAR(20) NOT NULL,
    city_id SMALLINT UNSIGNED,
    postal_code VARCHAR(10) DEFAULT NULL,
    phone VARCHAR(20) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    KEY idx_fk_city_id (city_id),
    CONSTRAINT `fk_address_city` FOREIGN KEY (city_id)
        REFERENCES city (city_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

describe address;

drop database sakila2;

/*

5. Write a query to insert values in table customer. (schema - sakila)


*/
use sakila;
SELECT 
    *
FROM
    customer;


insert into customer values
		(10010,1,'Abhi','Kumar','abhi.kumar@sakilacustomer.org',6,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(10050,1,'Ridhi','Jaiswal','Ridhi.jais@sakilacustomer.org',7,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(10060,2,'Ankit','Kumar','Ankit.Kumar@sakilacustomer.org',8,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(10070,1,'Kalyani','Jaiswal','kalyani.jais@sakilacustomer.org',9,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(10080,2,'Sandy','sharma','sandy.shar@sakilacustomer.org',10,1,'2006-02-14 22:04:36','2006-02-15 04:57:20');
SELECT 
    *
FROM
    customer;


/*
6. Write a query to insert values in table rental. (schema - sakila)
*/

SELECT 
    *
FROM
    rental;
insert into rental values(103452,'2020-10-21 09:00:33',1525,459,'2020-10-21 09:00:33',1,'2022-02-15 11:10:53'),
(103463,'2020-10-21 09:00:33',1911,408,'2020-10-21 09:00:33',1,'2022-02-15 11:10:53'),
(105344,'2020-10-21 09:00:33',21052,333,'2020-10-21 09:00:33',1,'2022-02-15 11:10:53'),
(107825,'2020-10-21 09:00:33',2029,222,'2020-10-21 09:00:33',1,'2022-02-15 11:10:53'),
(145626,'2020-10-21 09:00:33',10792,549,'2020-10-21 09:00:33',1,'2022-02-15 11:10:53'),
(190237,'2020-10-21 09:00:33',9995,269,'2020-10-21 09:00:33',1,'2022-02-15 11:10:53');
      

SELECT 
    *
FROM
    rental;
    
                     
