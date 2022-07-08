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

CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name varchar(100),
    age INT
    
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(100)
);


ALTER TABLE animals DROP species;

ALTER TABLE animals DROP id;

ALTER TABLE animals ADD id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;


ALTER TABLE animals ADD species_id  INT;
ALTER TABLE animals ADD  FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id  INT;
ALTER TABLE animals ADD  FOREIGN KEY (owner_id) REFERENCES owners(id);






