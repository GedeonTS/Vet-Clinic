/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int,
    name varchar(100),
    date_of_birth date, 
    escape_attemps int, 
    neutered boolean, 
    weight_kg dec
);

ALTER TABLE animals ADD species varchar(100);


