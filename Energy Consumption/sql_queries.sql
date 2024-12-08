create database energy_consumption;
use energy_consumption;
CREATE TABLE biogas_consumption (
    Country VARCHAR(255),
    Year INT,
    Biogas_Consumption BIGINT
);

CREATE TABLE co2_emmerging (
    Country VARCHAR(255),
    Year INT,
    co2_emerging double
);


DELETE FROM biogas_consumption
WHERE biogas_cons IS NULL OR biogas_cons = 0.0;

select e.country,e.year,e.biogas_cons,c.emissions as co2_emission from biogas_consumption as e  join co2_emissions as c on e.year=c.year and e.country=c.country;

select e.country,e.year,e.oil_conumption,c.emissions as co2_emission from oil_consumption as e  join co2_emissions as c on e.year=c.year and e.country=c.country;

select e.country,e.year,e.water_conumption,c.emissions as co2_emission from water_consumption as e  join co2_emissions as c on e.year=c.year and e.country=c.country;

select * from biogas_consumption;

select * from water_consumption;

select * from electricity_consumption_data;

select * from oil_consumption;