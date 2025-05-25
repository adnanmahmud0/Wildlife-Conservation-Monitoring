-- Active: 1748160937682@@127.0.0.1@9999@conservation_db

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    region VARCHAR (100) NOT NULL
)

