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



