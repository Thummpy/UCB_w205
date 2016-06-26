drop table hospital_general;
create external table hospital_general(
Provider_ID int,
Hospital_Name STRING,
Address STRING,
City STRING,
State STRING,
ZIP_Code int,
County_Name STRING,
Phone_Number int,
Hospital_Type STRING,
Hospital_Ownership STRING,
Emergency_Services STRING
)
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
stored as TEXTFILE
location '/user/w205/hospital_compare/Hospital_General_Information.csv';


drop table effective_hospital;
create external table effective_hospital(
Provider_ID int,
Hospital_Name STRING,
Address STRING,
City STRING,
State STRING,
ZIP_Code int,
County_Name STRING,
Phone_Number int,
Condition STRING,
Measure_ID STRING,
Measure_Name STRING,
Score STRING,
Sample STRING,
Footnote STRING,
Measure_Start_Date Date,
Measure_End_Date Date

)
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar"=",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
stored as TEXTFILE
location '/user/w205/hospital_compare/Timely_and_Effective_Care_-_Hospital.csv';



drop table survey_hospital;
create external table survey_hospital(
Provider_ID int,
Hospital_Name STRING,
Address STRING,
City STRING,
State STRING,
ZIP_Code int,
County_Name STRING,
Phone_Number int,
HCAHPS_Measure_ID STRING,
HCAHPS_Question STRING,
HCAHPS_Answer_Description STRING,
Patient_Survey_Star_Rating STRING,
Patient_Survey_Star_Rating_Footnote STRING,
HCAHPS_Answer_Percent STRING,
HCAHPS_Answer_Percent_Footnote STRING,
Number_of_Completed_Surveys STRING,
Number_of_Completed_Surveys_Footnote STRING,
Survey_Response_Rate_Percent int,
Survey_Response_Rate_Percent_Footnote STRING,
Measure_Start_Date Date,
Measure_End_Date Date

)
row format serde 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar"=",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
stored as TEXTFILE
location '/user/w205/hospital_compare/HCAHPS_-_Hospital.csv';



