
/*****************************************************************************************************************
NAME:  EC_IT143_W9.2_Law Enforcement_JE.sql
PURPOSE: My script purpose is to allow the community of Law Enforcement make some question 
regarding to the Law enforcement dataset.

MODIFICATION LOG:
Ver     Date            Author               Description
----- ----------  ----------------          --------------------------------------------------------------------------
1.0   06/23/2022      JESCOBAR              1. Built this script for EC IT143

RUNTIME:
10 minutes


NOTES:
This script will contain four question in total. Three of them will be done by myself and the last one
will be asked by one of my classmates. These four questions are based on the Law enfocerment community and CyberSecurity dataset.
******************************************************************************************************************/

-- Q1: As Law enforcement, our job is to protect our communities not just physically but virtually as well. 
--Can you to create a list of countries and regions that have been affected by cyber attacks and a list of cyber attacks? 
--I only need to see the countries, the regions and the list of cyber attacks.

-- A1: --A: Let's ask SQL server and find out...

SELECT T1.Country, T1.Region, T2.[Cyber Attacks]
 From dbo.Cyber_Info AS T2
 right join dbo.Cyber_security AS T1
 on T1.Country = T2.Country;

--Q2: After analysing the countries of the regions, our concern had increased and we want to the countries affected by the region of Africa. 
--Can you make a list of all the countries from the region of Africa? 
-- We only need the countries and regions

-- A2: --A: Let's ask SQL server and find out...

SELECT T1.Country, T1.Region
From dbo.Cyber_Info AS T2
right join dbo.Cyber_security AS T1
on T1.Country = T2.Country
where T1.Region = 'Africa';

--Q3:United States has been known throughout the years that many hackers have attacked our citizens and have been successful with their plan. 
--We now want to focus on our country United States. Can you make a table that shows this information? We need country, region and the cyber attacks cost per day. 

-- A3:Let's ask SQL server and find out...

SELECT T1.Country, T1.Region, T2.[Cyber Attacks Costs]
FROM dbo.Cyber_Info AS T2
left join dbo.Cyber_security AS T1
on T1.Country = T2.Country
WHERE T1.Country = 'United States';

--Q4:We want to focus on better protecting countries more vulnerable to cyber threats.
--What are the three countries with the lowest NCSI rating and the most often occurring attack there?

--A4:Let's ask SQL server and find out...
--******Author:Dylan Swehosky******

SELECT NCSI, country
from dbo.Cyber_security
where NCSI < = 3;