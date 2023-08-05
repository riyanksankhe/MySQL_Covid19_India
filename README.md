# MySQL_Covid19_India

**Project Title: COVID-19 Data Analysis using MySQL**

**Description:**
This project aims to perform a comprehensive analysis of COVID-19 data for India using MySQL. The dataset used in this project consists of three CSV files obtained from the official Government of India website: covid_19_india.csv, covid_vaccine_statewise.csv, and StatewiseTestingDetails.csv. The analysis is divided into three main parts: COVID-19 Analysis, COVID-19 Vaccination Analysis, and COVID-19 Testing Analysis.

**Part 1: COVID-19 Analysis:**
In this section of the project, we explore and analyze the COVID-19 data to gain insights into the spread and impact of the virus across various states and union territories in India. We perform various queries and data manipulations on the covid_19_india.csv dataset to extract valuable information, such as the total number of confirmed cases, active cases, recovered cases, and deaths. We also study the temporal trends of COVID-19 by analyzing daily case counts, identifying hotspots, and calculating growth rates.

**Part 2: COVID-19 Vaccination Analysis:**
This section focuses on analyzing the COVID-19 vaccination data available in the covid_vaccine_statewise.csv file. We investigate the progress of vaccination drives across different states and union territories. The analysis includes calculating the total number of vaccinated individuals, doses administered, and the distribution of different vaccine types. Additionally, we examine vaccination rates over time and assess the impact of vaccination efforts on COVID-19 cases.

**Part 3: COVID-19 Testing Analysis:**
In the final part of the project, we delve into the StatewiseTestingDetails.csv dataset to analyze the COVID-19 testing efforts across India. We study the testing capacity of each state, the types of tests conducted, and the positivity rates. Moreover, we investigate the correlation between testing rates and the number of reported cases to understand the effectiveness of testing in controlling the spread of the virus.


**Project Goals:**
1. Gain insights into the spread and impact of COVID-19 across different states and union territories in India.
2. Assess the effectiveness of vaccination efforts in curbing the pandemic.
3. Understand the testing efforts and their impact on controlling COVID-19 transmission.
4. Share the project and analysis on GitHub to facilitate collaboration and knowledge sharing.


*By dividing the project into these three parts and uploading it to GitHub, it becomes easily accessible and provides valuable insights for anyone interested in understanding the COVID-19 situation in India. Additionally, this project serves as a foundation for further analysis.*

---

**Below are all the outputs of the queries:** 


## COVID-19 Analysis:

### (1) What is the total number of confirmed cases, recoveries, and deaths in each state/union territory?
![Screenshot (31)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/87a8469d-2460-4e5a-ac65-cd3feb46a651)

### (2) Which state/union territory has the highest number of confirmed cases, and what is the trend over time?
![Screenshot (32)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/dd01898b-1728-4eef-88ce-30e9f28c530b)

### (3) Calculate the recovery rate and mortality rate for each state/union territory.
![Screenshot (33)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/123ed1e1-b851-4db8-99b6-45fee62264f7)

###  (4) Identify the top five states/union territories with the highest number of confirmed cases among Indian nationals and foreign nationals.
![Screenshot (34)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/822f3cf9-ca08-481f-a910-5e36eb7c9d10)

---
## COVID-19 Vaccination Analysis:

### (1) What are the total vaccine doses administered in each state?
![Screenshot (35)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/01de5fbe-186a-47ef-97df-8a677c7d2307)

### (2) Identify the most commonly administered vaccine (Covaxin, CoviShield, Sputnik V) in each state.
![Screenshot (36)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/507282f5-dec6-4830-9661-5856660b8eb8)

### (3) Find the total number of vaccinations administered in each state, along with the percentage of the total vaccinations for each state compared to the overall total vaccinations across all states.
![Screenshot (37)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/d5d49299-9fdf-42a8-9590-b3094ab95d29)

### (4) Find the total number of vaccinations administered to individuals in different age groups (18-44 years, 45-60 years, 60+ years). Calculate the percentage of vaccinations for each age group compared to the overall total vaccinations.
![Screenshot (38)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/f557fe0b-3c66-4eda-8052-2fb5cdb551b2)

### (5) Calculate the percentage change in the number of people who did not take the second dose of the vaccine for each state. 
![Screenshot (39)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/49510405-b615-4502-8fd2-2f80f333050a)

### (6) From the total doses administered what is the percentage of each gender based on state?
![Screenshot (40)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/b903f1cb-947b-42e0-a50b-177622fd38e9)

---
## COVID-19 Testing Analysis:

### (1) Calculate the total number of tests conducted in each state.
![Screenshot (41)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/87f82d3a-8a7e-4092-adde-db2e4ba0b0bf)

### (2) Identify the state with the highest and lowest number of positive cases based on testing.
  ### Highest positive cases 
![Screenshot (42)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/f8ae2482-c36e-4299-8fbc-afcab33ba1e2)

  ### Lowest positive cases 
![Screenshot (43)](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/2026efdb-7c15-4912-90dc-e95f99985f51)

### (3) Calculate the change in total samples for each state over consecutive six-month intervals within each state's data.
![2023-08-04 19 21 13](https://github.com/riyanksankhe/MySQL_Covid19_India/assets/138203213/e29f2061-1833-4e31-bc5c-1907ce504c46)
