/* Populate database with sample data. */


INSERT INTO animals VALUES(1,'Agumon','03/02/2020', 0, true,10.23);
INSERT INTO animals VALUES(2,'Gabumon','11/15/2018', 2, true,8);
INSERT INTO animals VALUES(3,'Pikachu','01/07/2021', 1, false,15.04);
INSERT INTO animals VALUES(4,'Devimon','05/12/2017', 5, true,11);


INSERT INTO animals VALUES(5,' Charmander','02/08/2020', 0, false,11);
INSERT INTO animals VALUES(6,'Plantmon','11/15/1993', 2, true,5.7);
INSERT INTO animals VALUES(7,'Squirtle','04/02/1993', 3, false,12.13);
INSERT INTO animals VALUES(8,'Angemon','06/12/2005', 1, true,45);
INSERT INTO animals VALUES(9,'Boarmon','06/07/2005', 7, true, 20.4);
INSERT INTO animals VALUES(10,'Blossom','10/13/1998', 3, true,17);
INSERT INTO animals VALUES(11,'Ditto','05/14/2022', 4, true,22);

INSERT INTO species(name) VALUES('Pokemon'),('Digimon');
INSERT INTO owners(full_name,age) VALUES('Sam Smith',34),('Jennifer Orwell',19),('Bob',45),('Melody Pond',77),('Dean Winchester', 14),('Jodie Whittaker',38);

UPDATE animals SET owner_id=1 WHERE name='Agumon';
UPDATE animals SET owner_id=2 WHERE name='Gabumon' OR name='Pikachu';
UPDATE animals SET owner_id=3 WHERE name='Devimon' OR name='Plantmon';
UPDATE animals SET owner_id=4 WHERE name='Charmander' OR name='Squirtle' OR name='Blossom';
UPDATE animals SET owner_id=5 WHERE name='Angemon' OR name='Boarmon';

UPDATE animals SET species_id=2 WHERE name ilike '%mon%';
UPDATE animals SET species_id=1 WHERE species_id is null;


INSERT INTO vets(name,age,date_of_graduation)
 VALUES('William Tatcher',45,'04/23/2000'),
 ('Maisy Smith',26,'01/17/2019'),
 ('Stephanie Mendez',64,'05/04/1981'),
 ('Jack Harkness',45,'06/08/2008')
 ;

 INSERT INTO specializations VALUES (1,1),(1,3),(2,3),(2,4);

 INSERT INTO visits( animals_id, vets_id, date_of_visits) VALUES
 (4,1,'05/24/2020'),
 (4,3,'07/22/2020'),
 (5,4,'02/02/2021'),
 (11,2,'01/05/2020'),
 (11,2,'03/08/2020'),
 (11,2,'04/14/2020'),
 (6,3,'05/04/2021'),
 (7,4,'02/24/2021'),
 (1,2,'12/21/2019'),
 (1,1,'08/10/2020'),
 (1,2,'04/07/2021'),
 (8,3,'09/29/2019'),
 (2,4,'10/03/2020'),
 (2,4,'11/04/2020'),
 (3,2,'01/24/2019'),
 (3,2,'05/15/2019'),
 (3,2,'02/27/2020'),
 (3,2,'08/24/2020'),
 (9,3,'05/24/2020'),
 (9,1,'01/11/2021');







