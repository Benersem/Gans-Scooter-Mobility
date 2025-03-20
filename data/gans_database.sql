-- Create the database
CREATE DATABASE cities;
USE cities;
-- Use the database
USE cities;

CREATE TABLE countries (
    country_id INT AUTO_INCREMENT,
    country_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (country_id)
);

CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(100),
    country_id INT,
    population INT,
    latitude DECIMAL(10 , 6 ),
    longitude DECIMAL(10 , 6 ),
    timestamp DATETIME,
    FOREIGN KEY (country_id)
        REFERENCES countries (country_id)
);

SET SQL_SAFE_UPDATES = 0;

DELETE c1 FROM countries c1
        JOIN
    countries c2 ON c1.country_name = c2.country_name
        AND c1.country_id > c2.country_id;

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE cities CHANGE timestamp created_date DATETIME;

-- DROP TABLE IF EXISTS weather;
CREATE TABLE weather (
    weather_id INT AUTO_INCREMENT PRIMARY KEY,
    city_id INT,
    city VARCHAR(100),
    latitude DECIMAL(10 , 2 ),
    longitude DECIMAL(10 , 2 ),
    temp DECIMAL(10 , 1 ),
    feels_like DECIMAL(10 , 1 ),
    time_forecasted DATETIME,
    weather VARCHAR(100),
    weather_description VARCHAR(150),
    rain_last_3h DECIMAL(10 , 2 ),
    humidity INT,
    wind_speed DECIMAL(10 , 2 ),
    clouds INT,
    data_retrieved_at DATETIME,
    FOREIGN KEY (city_id)
        REFERENCES cities (city_id)
);

-- DROP TABLE IF EXISTS air_codes ;
CREATE TABLE air_codes (
    city_id INT,
    city_name VARCHAR(100),
    icao VARCHAR(4),
    iata VARCHAR(4),
    airport VARCHAR(150),
    PRIMARY KEY (icao),
    FOREIGN KEY (city_id)
        REFERENCES cities (city_id)
)  ENGINE=INNODB;
;

-- DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    scheduled_time_local DATETIME,
    arrival_icao VARCHAR(255),
    departure_icao VARCHAR(255),
    departure_airport VARCHAR(255),
    flight_number VARCHAR(255),
    flight_status VARCHAR(255),
    airline VARCHAR(255),
    data_retrieved_at DATETIME,
    FOREIGN KEY (arrival_icao)
        REFERENCES air_codes (icao)
);


