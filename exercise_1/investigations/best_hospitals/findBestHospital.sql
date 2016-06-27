select Provider_ID,(sum(Patient_Survey_Star_Rating* if(Number_of_Completed_Surveys = 'Between 100 and 299',150,300)) / sum(if(Number_of_Completed_Surveys = 'Between 100 and 299',150,300))) as weighted_score from survey_hospital_s where Patient_Survey_Star_Rating in (0,1,2,3,4,5) group by Provider_ID order by weighted_score DESC limit 100;


