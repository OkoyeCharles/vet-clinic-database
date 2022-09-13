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
);
