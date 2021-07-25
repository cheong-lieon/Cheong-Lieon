drop table `airports_schema`.`flightstatus`;

CREATE TABLE `airports_schema`.`flightstatus` (
`NUM` INT NOT NULL,
`AIRPORTS` VARCHAR(100) NULL,
`DATE` VARCHAR(100) NULL,
`TIME` VARCHAR (100) NULL,
`FLIGHT` VARCHAR(100) NULL,
`ORIGIN` VARCHAR(100) NULL,
`AIRCRAFT` VARCHAR(100) NULL,
`AIRLINE/OPERATOR` VARCHAR(100) NULL,
`STAT` VARCHAR(100) NULL,
`DURATION` VARCHAR(100) NULL,
PRIMARY KEY (`NUM`) 
);

set sql_mode='';

LOAD DATA
INFILE "C:/ProgramData/MySQL/arrival.csv"
INTO TABLE airports_schema.flightstatus
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

select * from airports_schema.flightstatus;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM flightstatus WHERE STAT = 'CANCELLED';
SET SQL_SAFE_UPDATES = 1;

select *  from airports_schema.flightstatus where DATE = '2021 Jul 25';

select AIRPORTS,COUNT(AIRPORTS) AS COUNTS
   from flightstatus group by AIRPORTS order by COUNTS DESC;