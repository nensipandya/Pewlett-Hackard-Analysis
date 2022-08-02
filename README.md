# Pewlett-Hackard-Analysis

## Overview of Analysis
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Purpose

Pewlett Hackard(PH) is a large company boasting several thousands of employees. After a long period of time , a large number of employees are going to retire at rapid rate.Pewlett Hackard is looking forward towards the future in two ways.
  1)The Number of Retiring Employees by Title
  2)The Employees Eligible for the Mentorship Program
  
Bobby has been assign to perform these analysis but PH has fallen a bit behind in the database department, so it will be a huge achievement to get this organized for the company. In order to achieve this goal, Bobby needs to download this two tools: PostgreSQL and pgAdmin. He'll use Postgres to create a database, and pgAdmin to work with the data he'll be importing. PostgreSQL and pgAdmin will be our gateway into the SQL universe. Since all the necessary information are in six different csv files, first Bobby need to create ERD, An entity relationship diagram (ERD) is a type of flowchart that highlights different tables and their relationships to each other. The ERD does not include any actual data, but it does capture the following pertinent information from each CSV file:

    - Primary keys
    - Foreign keys
    - Data types for each column
    
The flowchart below shows ERD flowchart or map. 


![image](https://user-images.githubusercontent.com/107137215/182369546-8afb6b19-2c5c-4a90-ba72-ce2aad024af7.png)

With the help of the flowchart or map, Bobby can start the analysis of the “silver tsunami” as many current employees reach retirement age.


## Results
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The queries were created for the number of retiring employees by the title is indicating thst it's truly a " silver tsunami " coming down for Pewlett Hackard.

![image](https://user-images.githubusercontent.com/107137215/182374045-c12091a1-175a-4d3c-873d-08ad7f6d4f55.png)

- A total of 90,398 employees are about to retire from the comppany.
- A lager numbr of employees are retiring from the " Senior Engineer " (25,916) and from " Senior Staff" ( 24,926), which indicating the departure of a significant
  portion of experienced  knowledge. Recruiting need to really work hard on to fill up these positions.
- Luckily, only 2 managers are retiring from the company.
- The number of employees,eligible for the mentorship program are few (1549) in comparison to the number of employees retiring.

## Summary
------------------------------------------------------------------------------------------------------------------------------------------------------------------------


