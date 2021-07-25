drop table `airports_schema`.`airports`;

CREATE TABLE `airports_schema`.`airports` (
`NUM` INT NOT NULL,
`AIRPORTS` VARCHAR(100) NULL,
`CITY` VARCHAR(100) NULL,
`COUNTRY` VARCHAR(100) NULL,
`LAT` DOUBLE NULL,
`LON` DOUBLE NULL,
PRIMARY KEY (`NUM`) 
);

select * from airports_schema.airports;

set sql_mode='';

LOAD DATA
INFILE "C:/ProgramData/MySQL/msia_db.csv"
INTO TABLE airports_schema.airports
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

DELETE FROM airports WHERE NUM = '0';

select * from airports_schema.airports;

SELECT NUM,
       AIRPORTS,
       LAT,
       LON,
       (2*6371*sin((radians(LAT))/2)) AS "X",
       (2*6371*sin((radians(LON))/2))AS "Y"
FROM airports;

