drop table hospital_general;
create external table hospital_general(
Provider_ID int(6),
Hospital_Name varchar(200).
Address varchar(200),
City varchar(200),
State char(2),
ZIP_Code int(5),
County_Name varchar(200),
Phone_Number int(10),
Hospital_Type varchar(200),
Hospital_Ownership varchar(200),
Emergency_Services varchar(3)
)
row format serde 'prg.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar"=",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
stored as TEXTFILE
location '/user/w205/hospital_compare';


drop table effective_hospital;
create external table effective_hospital(
Provider_ID int(6),
Hospital_Name varchar(200).
Address varchar(200),
City varchar(200),
State char(2),
ZIP_Code int(5),
County_Name varchar(200),
Phone_Number int(10),
Condition varchar(200),
Measure_ID varchar(100),
Measure_Name varchar(200),
Score varchar(100),
Sample varchar(100),
Footnote varchar(200),
Measure_Start_Date Date(),
Measure_End_Date Date()

)
row format serde 'prg.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar"=",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
stored as TEXTFILE
location '/user/w205/hospital_compare';


drop table survey_hospital;
create external table survey_hospital(
Provider_ID int(6),
Hospital_Name varchar(200).
Address varchar(200),
City varchar(200),
State char(2),
ZIP_Code int(5),
County_Name varchar(200),
Phone_Number int(10),
HCAHPS_Measure_ID varchar(100),
HCAHPS_Question_varchar(200),
HCAHPS_Answer_Description varchar(200),
Patient_Survey_Star_Rating varchar(100),
Patient_Survey_Star_Rating_Footnote varchar(200),
HCAHPS_Answer_Percent varchar(100),
HCAHPS_Answer_Percent_Footnote varchar(200),
Number_of_Completed_Surveys varchar(100),
Number_of_Completed_Surveys_Footnote varchar(200),
Survey_Response_Rate_Percent int(3),
Survey_Response_Rate_Percent_Footnote varchar(200),
Measure_Start_Date Date(),
Measure_End_Date Date()

)
row format serde 'prg.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar"=",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
stored as TEXTFILE
location '/user/w205/hospital_compare';



