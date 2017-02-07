mob = LOAD '/usr/local/hadoop/group1test/Mobile.csv'
 USING PigStorage(',') as (Sr_no:int, Month:chararray, Bank_name:chararray, Transaction:int, Amount:float);
filter_data = FILTER mob BY Bank_name == 'STATE BANK OF INDIA';
STORE filter_data into '/usr/local/hadoop/group1test/mobileanswer/answer' USING PigStorage (',');

