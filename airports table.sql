drop table `airports_schema`.`airports_table`;

CREATE TABLE `airports_schema`.`airports_table` (
`NUMBER` INT NOT NULL,
`AIRPORTS` VARCHAR(100) NULL,
`CITY` VARCHAR(100) NULL,
`COUNTRY` VARCHAR(100) NULL,
`IATA_CODE` VARCHAR(100) NULL,
`ICAO_CODE` VARCHAR(100) NULL,
`LATITUDE` DOUBLE NULL,
`LONGITUDE` DOUBLE NULL,
`FIELD_ELEVATION` INT NOT NULL,
`GMT` DOUBLE NULL,
`ALP` VARCHAR(100) NULL,
`CONTINENT` VARCHAR(100) NULL,
`DESCP1` VARCHAR(100) NULL,
`DESCP2` VARCHAR(100) NULL,
PRIMARY KEY (`NUMBER`) 
);

set sql_mode='';

LOAD DATA
INFILE "C:/ProgramData/MySQL/airports_db.csv"
INTO TABLE airports_schema.airports_table
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

select * from airports_schema.airports_table;

select *  from airports_schema.airports_table where COUNTRY = 'Malaysia';

SELECT COUNT(NUMBER) FROM airports_schema.airports_table where COUNTRY = 'Malaysia';