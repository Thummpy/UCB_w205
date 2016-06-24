#get data:
cd /tmp && wget https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip

#unzip the data
unzip 'Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip; charset=binary'

#trim of all first lines
ls | grep csv |xargs -i -t sed {} -i -e '1,1d'

#make project folder
hdfs dfs mkdir /users/w205/hospital_compare/

#move csv files to hdfs
ls | grep csv |xargs -i -t hdfs dfs -put {} /user/w205/hospital_compare/
