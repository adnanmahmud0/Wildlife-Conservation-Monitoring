-- Active: 1748160937682@@127.0.0.1@9999@conservation_db

-- Create rangers table
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    region VARCHAR (100) NOT NULL
);

-- Create species table
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(150) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(50) CHECK (conservation_status IN ('Endangered', 'Vulnerable', 'Historic'))
);

-- Create sightings table
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id),
    species_id INT REFERENCES species(species_id),
    sighting_time TIMESTAMP NOT NULL,
    location VARCHAR(150) NOT NULL,
    notes TEXT
);


-- Insert data into rangers
INSERT INTO rangers (name, region) VALUES
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range');