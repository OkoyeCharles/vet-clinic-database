CREATE TABLE medical_histories (
 id INT GENERATED ALWAYS AS IDENTITY,
 admitted_at TIMESTAMP,
 patient_id INT,
 status VARCHAR
);

CREATE TABLE patients (
 id INT GENERATED ALWAYS AS IDENTITY,
 name VARCHAR,
 date_of_birth DATE,
 PRIMARY KEY(id)
);

ALTER TABLE medical_histories 
  ADD CONSTRAINT fk_patientsmedical_histories
    FOREIGN KEY (patient_id) REFERENCES patients(id);

CREATE TABLE treatments (
  id INT GENERATED ALWAYS AS IDENTITY,
  type  VARCHAR,
  name VARCHAR,
  PRIMARY KEY(id)
);

CREATE TABLE medical_histories_treatments (
  medical_history_id  INT,
  treatment_id INT,
  FOREIGN KEY (medical_history_id) REFERENCES medical_history(id),
  FOREIGN KEY (treatment_id) REFERENCES treatment(id)
)
