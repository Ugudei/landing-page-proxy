CREATE DATABASE CARS
USE CARS;


DROP TABLE IF EXISTS venicle;
		
CREATE TABLE venicle (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  cost FLOAT NULL DEFAULT NULL,
  name VARCHAR(250) NULL DEFAULT NULL,
  feature_id INTEGER NULL DEFAULT NULL,
  highlighted_feature_id INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS feature;
		
CREATE TABLE feature (
  id BOOL NULL AUTO_INCREMENT DEFAULT NULL,
  Emergency communication system BOOL NULL DEFAULT NULL,
  External parking camera BOOL NULL DEFAULT NULL,
  Parking sensors BOOL NULL DEFAULT NULL,
  Remote keyless entry BOOL NULL DEFAULT NULL,
  Navigation System BOOL NULL DEFAULT NULL,
  Fully automatic headlights BOOL NULL DEFAULT NULL,
  Alloy wheels BOOL NULL DEFAULT NULL,
  Leather upholstery BOOL NULL DEFAULT NULL,
  Blind spot sensor BOOL NULL DEFAULT NULL,
  Auto dimming rearview mirror BOOL NULL DEFAULT NULL,
  Premium audio system BOOL NULL DEFAULT NULL,
  Moonroof BOOL NULL DEFAULT NULL,
  Spoiler BOOL NULL DEFAULT NULL,
  Perimeter/approach lights BOOL NULL DEFAULT NULL,
  Lane departure BOOL NULL DEFAULT NULL,
  PRIMARY KEY (id)
);  

CREATE TABLE highlighted_feature (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  Engine VARCHAR(250) NULL DEFAULT NULL,
  Color VARCHAR(250) NULL DEFAULT NULL,
  MPG VARCHAR(250) NULL DEFAULT NULL,
  Information (mileage,vin num) VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE venicle ADD FOREIGN KEY (feature_id) REFERENCES feature (id);
ALTER TABLE venicle ADD FOREIGN KEY (highlighted_feature_id) REFERENCES highlighted_feature (id);


INSERT INTO 