create table hospital_general_s row format delimited fields terminated by '\t' stored as textfile location '/user/w205/hospital_compare/hospitalGeneral' as select * from hospital_general;
