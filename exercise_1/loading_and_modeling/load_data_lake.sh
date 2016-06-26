#get data:
cd /tmp && wget https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip

#unzip the data
unzip 'Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip; charset=binary'

#trim of all first lines
ls | grep csv |xargs -i -t sed {} -i -e '1,1d'

#make project folder
hdfs dfs -mkdir /user/w205/hospital_compare/

#make table1 folder
hdfs dfs -mkdir /user/w205/hospital_compare/effectiveHospital
hdfs dfs -put Timely_and_Effective_Care_-_Hospital.csv /user/w205/hospital_compare/effectiveHospital/

#make table2 folder
hdfs dfs -mkdir /user/w205/hospital_compare/hospitalGeneral
hdfs dfs -put Hospital_General_Information.csv /user/w205/hospital_compare/hospitalGeneral/

#make table3 folder
hdfs dfs -mkdir /user/w205/hospital_compare/surveyHospital
hdfs dfs -put HCAHPS_-_Hospital.csv /user/w205/hospital_compare/surveyHospital/

