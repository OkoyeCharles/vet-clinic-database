/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

CREATE TABLE animals(
  id INT,
  name TEXT,
  date_of_birth DATE, 
  escape_attemps INT,
  neutered BOOLEAN,    
  weight_kg DEC,
  species TEXT,
  PRIMARY KEY(id)
);

ALTER TABLE animals 
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

CREATE TABLE owners(
 id INT GENERATED ALWAYS AS IDENTITY,
 full_name TEXT,
 age INT,
 PRIMARY KEY(id)
);

CREATE TABLE species(
 id GENERATED ALWAYS AS IDENTITY,
 name TEXT,
 PRIMARY KEY(id)
);