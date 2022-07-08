/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name ilike '%mon%';

SELECT * FROM animals WHERE date_of_birth>'2016-01-01' AND date_of_birth<'2019-01-01';

 SELECT name FROM animals WHERE neutered = true AND escape_attempts>3;

 SELECT date_of_birth FROM animals WHERE name ='Agumon' OR name='Pikachu';

 SELECT name, escape_attempts FROM animals WHERE weight_kg<10.5;

 SELECT * FROM animals WHERE neutered=true;

 SELECT * FROM animals WHERE name!='Gabumon';

 SELECT * FROM animals WHERE weight_kg>=10.4 AND weight_kg<=17.3;


 DELETE FROM animals WHERE date_of_birth>'2022-01-01';

UPDATE animals SET weight_kg=(weight_kg*(-1));

UPDATE animals SET weight_kg=(weight_kg*(-1)) WHERE weight_kg<0;

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts=0;

SELECT AVG(weight_kg) FROM animals;

SELECT name FROM animals WHERE escape_Attempts=(SELECT MAX(escape_attempts) FROM animals);

SELECT MIN(weight_kg),MAX(weight_kg) FROM animals WHERE species='digimon';
SELECT MIN(weight_kg),MAX(weight_kg) FROM animals WHERE species='pokemon';

SELECT AVG(escape_attempts) from animals WHERE species='digimon' AND (date_of_birth > '1990-01-01' AND date_of_birth < '2000-01-01');
SELECT AVG(escape_attempts)from animals WHERE species='pokemon' AND ('1990-01-01'<date_of_birth AND date_of_birth<'2000-01-01');


SELECT * FROM animals JOIN owners ON owners.id = owner_id WHERE owners.id=4;
SELECT * FROM animals  JOIN species ON species.id=species_id WHERE species.id=1;
SELECT owners.full_name, animals.name FROM owners LEFT OUTER JOIN animals ON owners.id = owner_id;

SELECT COUNT(animals) FROM animals JOIN species ON species.id=species_id WHERE species_id=1;
SELECT COUNT(animals) FROM animals JOIN species ON species.id=species_id WHERE species_id=2;

SELECT * FROM animals JOIN owners ON owner_id=owners.id where owners.id=2;
SELECT * FROM animals JOIN owners ON owner_id=owners.id where owners.id=5 AND escape_Attempts=0;

SELECT owner_id,owners.full_name FROM animals JOIN owners ON owners.id = owner_id GROUP BY owner_id,owners.full_name ORDER BY count(*) DESC LIMIT 1;

