Create database Covid_database;
use Covid_database;


											-- -- -- -- Importing Data -- -- -- -- 
                                                            
                                                            
														-- Table 1 --
                                                                        
CREATE TABLE covid_19_india (
  Sno INT PRIMARY KEY,
  Date varchar(255),
  Time varchar(255),
  `State/UnionTerritory` VARCHAR(255),
  ConfirmedIndianNational varchar(255),
  ConfirmedForeignNational varchar(255),
  Cured INT,
  Deaths INT,
  Confirmed INT
);
desc covid_19_india;


load data infile 'covid_19_india(1).csv'
into table covid_19_india
fields terminated by ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
ignore 1 rows;

select * from covid_database.covid_19_india;
update covid_database.covid_19_india
set Date= str_to_date(Date,'%d/%m/%Y');
alter table covid_database.covid_19_india
modify column Date date ;


update covid_database.covid_19_india
set Time= str_to_date(Time,'%h:%i:%s %p');
alter table covid_19_india 
modify Time time;

update covid_19_india 
set ConfirmedIndianNational = null
where ConfirmedIndianNational=' ';
alter table covid_database.covid_19_india
modify ConfirmedIndianNational int;

update covid_19_india 
set ConfirmedForeignNational = null
where ConfirmedForeignNational=' ';
alter table covid_database.covid_19_india
modify ConfirmedForeignNational int;

select * from covid_database.covid_19_india;

													    -- Table 2 --

Create table statewise_testing_details
(Date varchar(255),
State varchar(255),
TotalSamples int,
Negative varchar(255),
Positive varchar(255)
);


load data infile 'StatewiseTestingDetails(1).csv'
into table statewise_testing_details
fields terminated by ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
ignore 1 rows;

update  statewise_testing_details
set Date=str_to_date(Date,'%d/%m/%Y');
alter table statewise_testing_details
modify Date date;

update statewise_testing_details
set Negative = null
where Negative ="";
alter table statewise_testing_details
modify Negative int;

update statewise_testing_details
set Positive = null
where Positive ="";
alter table statewise_testing_details
modify Positive int;

select * from statewise_testing_details;

														-- Table 3 --

Create table covid_vaccine_statewise(
Updated_ON varchar(255),
State varchar(255), 
Total_Doses_Administered bigint, 
Sessions bigint, 
Sites bigint,
First_Dose_Administered bigint, 
Second_Dose_Administered bigint, 
Male_Doses_Administered bigint, 
female_Doses_Administered bigint, 
Transgender_Doses_Administered bigint, 
Covaxin_Doses_Administered bigint, 
CoviShield_Doses_Administered bigint, 
SputnikV_Doses_Administered bigint, 
AEFI bigint,
18_44_Years_Doses_Administered bigint,
45_60_Years_Doses_Administered bigint,
60plus_Years_Doses_Administered bigint,
18_44_Individuals_Vaccinated bigint,
45_60_Individual_Vaccinated bigint,
60plus_years_Individual_Vaccinated bigint, 
Male_Individual_Vaccinated bigint, 
Female_Individual_Vaccinated bigint, 
Transgender_Individual_Vaccinated bigint, 
Total_Individuals_Vaccinated bigint
);

desc covid_vaccine_statewise;
load data infile 'covid_vaccine_statewise(1).csv'
into table covid_vaccine_statewise
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows
(@Updated_ON, @State, @Total_Doses_Administered, @Sessions, @Sites, @First_Dose_Administered, @Second_Dose_Administered, 
@Male_Doses_Administered, @female_Doses_Administered, @Transgender_Doses_Administered, @Covaxin_Doses_Administered, 
@CoviShield_Doses_Administered, @SputnikV_Doses_Administered, @AEFI, @18_44_Years_Doses_Administered, 
@45_60_Years_Doses_Administered, @60plus_Years_Doses_Administered, @18_44_Individuals_Vaccinated, 
@45_60_Individual_Vaccinated, @60plus_years_Individual_Vaccinated, @Male_Individual_Vaccinated, 
@Female_Individual_Vaccinated, @Transgender_Individual_Vaccinated, @Total_Individuals_Vaccinated) 
SET 
    Updated_ON = IF(@Updated_ON = '', NULL, @Updated_ON),
    State = IF(@State = '', NULL, @State),
    Total_Doses_Administered = IF(@Total_Doses_Administered = '', NULL, @Total_Doses_Administered),
    Sessions = IF(@Sessions = '', NULL, @Sessions),
    Sites = IF(@Sites = '', NULL, @Sites),
    First_Dose_Administered = IF(@First_Dose_Administered = '', NULL, @First_Dose_Administered),
    Second_Dose_Administered = IF(@Second_Dose_Administered = '', NULL, @Second_Dose_Administered),
    Male_Doses_Administered = IF(@Male_Doses_Administered = '', NULL, @Male_Doses_Administered),
    female_Doses_Administered = IF(@female_Doses_Administered = '', NULL, @female_Doses_Administered),
    Transgender_Doses_Administered = IF(@Transgender_Doses_Administered = '', NULL, @Transgender_Doses_Administered),
    Covaxin_Doses_Administered = IF(@Covaxin_Doses_Administered = '', NULL, @Covaxin_Doses_Administered),
    CoviShield_Doses_Administered = IF(@CoviShield_Doses_Administered = '', NULL, @CoviShield_Doses_Administered),
    SputnikV_Doses_Administered = IF(@SputnikV_Doses_Administered = '', NULL, @SputnikV_Doses_Administered),
    AEFI = IF(@AEFI = '', NULL, @AEFI),
    18_44_Years_Doses_Administered = IF(@18_44_Years_Doses_Administered = '', NULL, @18_44_Years_Doses_Administered),
    45_60_Years_Doses_Administered = IF(@45_60_Years_Doses_Administered = '', NULL, @45_60_Years_Doses_Administered),
    60plus_Years_Doses_Administered = IF(@60plus_Years_Doses_Administered = '', NULL, @60plus_Years_Doses_Administered),
    18_44_Individuals_Vaccinated = IF(@18_44_Individuals_Vaccinated = '', NULL, @18_44_Individuals_Vaccinated),
    45_60_Individual_Vaccinated = IF(@45_60_Individual_Vaccinated = '', NULL, @45_60_Individual_Vaccinated),
    60plus_years_Individual_Vaccinated = IF(@60plus_years_Individual_Vaccinated = '', NULL, @60plus_years_Individual_Vaccinated),
    Male_Individual_Vaccinated = IF(@Male_Individual_Vaccinated = '', NULL, @Male_Individual_Vaccinated),
    Female_Individual_Vaccinated = IF(@Female_Individual_Vaccinated = '', NULL, @Female_Individual_Vaccinated),
    Transgender_Individual_Vaccinated = IF(@Transgender_Individual_Vaccinated = '', NULL, @Transgender_Individual_Vaccinated),
    Total_Individuals_Vaccinated = IF(@Total_Individuals_Vaccinated = '', NULL, @Total_Individuals_Vaccinated);

update covid_vaccine_statewise
set Updated_ON=str_to_date(Updated_ON,'%d/%m/%Y');
alter table covid_vaccine_statewise
modify Updated_ON date;

select * from covid_vaccine_statewise;





                                            -- -- -- -- COVID-19 Analysis: -- -- -- -- 

-- (1) What is the total number of confirmed cases, recoveries, and deaths in each state/union territory?

SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
ALTER TABLE `covid_database`.`covid_19_india` 
CHANGE COLUMN `State/UnionTerritory` `State_UnionTerritory` VARCHAR(255) NULL DEFAULT NULL ;

SELECT
    c1.State_UnionTerritory,
    c1.Confirmed AS Confirmed_cases,
    c1.Cured AS Recoveries,
    c1.Deaths AS Total_Deaths
FROM
    covid_19_india c1
JOIN (
    SELECT
	State_UnionTerritory,
	MAX(Date) AS LatestDate
    FROM
	covid_19_india
    GROUP BY
	State_UnionTerritory
) 
c2 ON c1.State_UnionTerritory = c2.State_UnionTerritory AND c1.Date = c2.LatestDate order by confirmed_cases desc;


-- (2) Which state/union territory has the highest number of confirmed cases, and what is the trend over time?

select
      State_UnionTerritory, 
      max(Confirmed) Confirmed ,
      concat(if(max(Confirmed)-min(Confirmed)/count(*)>0,'+',''),(max(Confirmed)-min(Confirmed))/count(*)) as Trend 
from covid_19_india group by State_UnionTerritory 
order by Confirmed desc limit 1;


-- (3) Calculate the recovery rate and mortality rate for each state/union territory.

SELECT
    ci.State_UnionTerritory,
    ci.Confirmed,
    ci.Cured,
    ci.Deaths,
    ((ci.Cured / ci.Confirmed) * 100) AS RecoveryRate,
    ((ci.Deaths / ci.Confirmed) * 100) AS MortalityRate
FROM
    covid_19_india ci
JOIN (
    SELECT
        State_UnionTerritory,
        MAX(Date) AS LatestDate
    FROM
        covid_19_india
    GROUP BY
        State_UnionTerritory
) latest_data ON ci.State_UnionTerritory = latest_data.State_UnionTerritory 
AND ci.Date = latest_data.LatestDate order by Confirmed desc;


/* (4) Identify the top five states/union territories with the highest number of confirmed cases 
       among Indian nationals and foreign nationals.*/

select
      State_Unionterritory,
      max(ConfirmedIndianNational) Indian_cases,
      max(ConfirmedForeignNational) Foreign_cases,
	  max(ConfirmedIndianNational+ConfirmedForeignNational) Total_cases
from covid_19_india
group by State_Unionterritory order by Total_cases desc limit 5;





                                            -- -- -- -- COVID-19 Vaccination Analysis: -- -- -- -- 

-- (1) What is the total number of vaccine doses administered in each state?

select 
      State,
      max(Total_Doses_Administered) Total_doses
from covid_vaccine_statewise
group by State order by Total_doses desc;


-- (2) Identify the most commonly administered vaccine (Covaxin, CoviShield, Sputnik V) in each state.

select
	  State,
      max(Total_Doses_Administered)Total_doses,
      max(Covaxin_Doses_Administered),
      max(CoviShield_Doses_Administered),
      max(SputnikV_Doses_Administered),
      case
      when max(Covaxin_Doses_Administered)>max(CoviShield_Doses_Administered) and max(Covaxin_Doses_Administered)>max(SputnikV_Doses_Administered) then 'Covaxin'
      when max(CoviShield_Doses_Administered)>max(Covaxin_Doses_Administered) and max(CoviShield_Doses_Administered)>max(SputnikV_Doses_Administered) then 'CoviShield'
      else 'SputbikV'
      end Most_Administered_Vaccine 
from covid_vaccine_statewise 
group by state order by Total_doses desc;


/* (3) Find the total number of vaccinations administered in each state, along with the percentage 
       of the total vaccinations for each state compared to the overall total vaccinations across all states.*/

SELECT
    State,
    max(Total_Doses_Administered) AS Total_Vaccinations,
    max(Total_Doses_Administered) * 100 / (SELECT max(Total_Doses_Administered) FROM covid_vaccine_statewise) AS Percentage
FROM covid_vaccine_statewise
GROUP BY State
ORDER BY Percentage DESC ;


/*(4) Find the total number of vaccinations administered to individuals in different age groups (18-44 years, 45-60 years, 60+ years). 
 	   Calculate the percentage of vaccinations for each age group compared to the overall total vaccinations.*/

select 
      state,
      max(18_44_Individuals_Vaccinated) 18_44_years,
      max(18_44_Individuals_Vaccinated)*100/max(Total_Individuals_Vaccinated) as Percentage_18_44,
	  max(45_60_Individual_Vaccinated) 45_60_years,
      max(45_60_Individual_Vaccinated)*100/max(Total_Individuals_Vaccinated) as Percentage_45_60,
	  max(60plus_years_Individual_Vaccinated) 60_plus_years,
      max(60plus_years_Individual_Vaccinated)*100/max(Total_Individuals_Vaccinated) as Percentage_60_plus
from covid_vaccine_statewise
group by state;
	  
      
-- (5) Calculate the percentage change in the number of people who did not take the second dose of the vaccine for each state. 

SELECT 
    State,
    (Latest_Second_Doses - Latest_First_Doses) Difference,
    (Latest_Second_Doses - Latest_First_Doses) * 100 / Latest_First_Doses AS Percent_Change
FROM
    (SELECT 
        State,
            MAX(Total_Doses_Administered) Latest_Total_Doses,
            MAX(First_Dose_Administered) Latest_First_Doses,
            MAX(Second_Dose_Administered) Latest_Second_Doses
    FROM
        covid_vaccine_statewise
    GROUP BY State) v1;
    
-- (6) From the total doses administered what is the percentage of each gender based on state.

select 
      State,
      round(max(Male_Doses_Administered)*100/max(Total_Doses_Administered),2)as male_percent,
      round(max(female_Doses_Administered)*100/max(Total_Doses_Administered),2) as female_percent,
      round(max(Transgender_Doses_Administered)*100/max(Total_Doses_Administered),2) as transgender_percent,
      round(max(Total_Doses_Administered)*100/max(Total_Doses_Administered),0) as Total_percent
	from covid_vaccine_statewise 
    group by State;
      
    
    
    
                                            -- -- -- -- COVID-19 Testing Analysis: -- -- -- -- 
                                  
-- (1) Calculate the total number of tests conducted in each state.

with v1 as(
select 
      State,
      max(TotalSamples) Total_Tests
from statewise_testing_details 
group by State)
select 
      State,
      Total_Tests
from v1 order by Total_Tests desc;
      
      
-- (2) Identify the state with the highest and lowest number of positive cases based on testing.

        -- Highest positive cases 
 select
       State,
       max(Positive) AS Highest_Positive_Cases
FROM statewise_testing_details group by state order by Highest_Positive_Cases desc limit 1;

        -- Lowest positive cases --
select
	  State,
	  min(Positive) AS Lowest_Positive_Cases
FROM statewise_testing_details 
      where Positive is not null
	  group by state order by Lowest_Positive_Cases limit 1 offset 1 ;
       
       
-- (3) Calculate the change in total samples for each state over consecutive six-month intervals within each state's data.

with v1 as(
select
      State,
      concat(year(Date),'-H',(quarter(Date)+1) div 2) as six_months,
      max(TotalSamples) as total_samples
from statewise_testing_details 
group by State, six_months
)
select 
      State,
      six_months,
      total_samples,
      case 
      when
      (total_samples-lag(total_samples,1,0) over (partition by State order by six_months))= total_samples then 0
      else (total_samples-lag(total_samples,1,0) over (partition by State order by six_months))
end
      as change_in_TotalSamples
from v1;
	