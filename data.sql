/* Populate database with sample data. */

INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
)
VALUES (
  'Agumon',
  date '2020-02-03',
  0,
  'true',
  10.23
);

INSERT INTO animals (
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg)
VALUES (
  'Gabumon',
  date '2018-11-15',
  2,
  'true',
  8
);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Pikachu', date '2021-1-7', 1, 'false', 15.04),('Devimon', date '2017-5-12', 5, 'true', 11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Charmander', date '2020-02-08', 0, 'false', -11), ('Plantmon', date '2021-11-15', 2, 'true', -5.7), ('Squirtle', date '1993-04-02', 3, 'false', -12.13), ('Angemon', date '2005-06-12', 1, 'true', -45), ('Boarmon', date '2005-06-07', 7, 'true', 20.4), ('Blossom', date '1998-10-13', 3, 'true', 17), ('Ditto', date '2022-05-14', 4, 'true', 22);

INSERT INTO owners (full_name, age) VALUES('Sam Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);
INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');

/* Modify your inserted animals so it includes the species_id value */ 
/* If the name ends in "mon" it will be Digimon */
BEGIN; 
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';

/* All other animals are Pokemon */
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;
COMMIT;
