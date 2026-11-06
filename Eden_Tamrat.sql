/*Create a table called Nigeria_States_And_Info with the following colums:state, state abbreviation,-
capital, slogan, date created, geopolitical zone, Number of local Govt, and Political party*/

CREATE TABLE Nigeria_States_And_Info (
                   State VARCHAR(20),
                    State_Abbreviation CHAR(3),
                    Capital VARCHAR(20),
                    Slogan TEXT,
                    Date_Created DATE,
                    Geopolitical_Zone VARCHAR(20),
                    Number_of_local_Govt INT,
                    Political_party CHAR(3)
                         );
 
 --Instert records into the newly created table
 INSERT INTO Nigeria_States_And_Info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_govt, political_party)
 VALUES('Jigawa', 'JIG', 'Duste', 'Liberal State', '1991-08-27', 'North West', '27', 'APC'),
       ('Delta', 'DEL', 'Asaba', 'The Big Heart', '1991-08-27', 'South South', '25', 'ABC'),
       ('Yobe', 'YOB', 'Damaturu', 'The Young Shall Grow', '1991-08-27', 'North East', '17', 'APC'),
       ('Zamfara', 'ZAM', 'Gusau', 'Home of Agricultural Products', '1976-02-03', 'North West', '14', 'ABC'),
       ('Eboniy', 'EBO', 'Abakaliki', 'Salt of the Nation', '1994-10-01', 'South East', '13', 'APC'),
       ('Gombe', 'GOM', 'Gombe', 'Land of Hope', '1996-10-01', 'North East', '11', 'APc'),
       ('Akawa-lbom', 'AKW', 'Uyo', 'Home of All', '1987-09-23', 'South South', '31', 'APC'),
       ('Taraba', 'TAR', 'Jalingo', 'Nature''s Gift to the Nation', '1992-08-01', 'North East', '17', 'APC');
       
--Lets see newly recorded values 
       SELECT*
       FROM Nigeria_States_And_Info;
       
--Update the slogan for Jiawa
    UPDATE Nigeria_States_And_Info
    SET slogan = 'The New World'
    WHERE state_abbreviation = 'JIG'; 
    
--Update the slogan for Yobe    
    UPDATE Nigeria_States_And_Info
    SET slogan = 'Pride of the Sahel'
    WHERE state_abbreviation = 'YOB';
    
 --Update the slogan for Akwa-lbom 
   UPDATE Nigeria_States_And_Info
   SET slogan = 'Land of Promise'
   where state_abbreviation = 'AKW';
   
--Update the slogan for Zamfara 
   UPDATE Nigeria_States_And_Info
   set slogan = 'Farming is Our Pride'
   WHERE state_abbreviation = 'ZAM';
   
--Update the slogan for Gombe 
  UPDATE Nigeria_States_And_Info
  SET slogan = 'Jewel of Savannah'
  WHERE state_abbreviation = 'GOM';
  
--Let see the updated new table 
 SELECT*
 FROM Nigeria_States_And_Info;
 
 /*Alter the Nigeria state and info table by adding a new coulmns (name of the current governor)
 Then add the foolowing records to the previously existing data*/
 ALTER TABLE Nigeria_States_And_Info
 ADD COLUMN Name_of_the_current_governor TEXT;
 
 --Let's see the new table
SELECT*
FROM Nigeria_States_And_Info;

INSERT INTO Nigeria_States_And_Info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_govt, political_party, Name_of_the_current_governor)
VALUES  ('Sokoto', 'SOK', 'Sokoto', 'Seat of the Caliphate', '1976-02-03', 'North West', '23', 'APC', 'Ahmad Aliyu'),
        ('Niger', 'NIG', 'Minna', 'The Power State', '1976-02-03', 'North Central', '25', 'APC', 'Mohammed Umar Bago');
 
--Let's see the new table
SELECT*
FROM Nigeria_States_And_Info