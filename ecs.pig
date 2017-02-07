bank_details = LOAD '/usr/local/hadoop/group1test/ECS.csv' 
   USING PigStorage(',')
   as ( sno:int, month:chararray,place:chararray, bank:chararray, credit_users:int, 
   credit_volume: int,credit_value:int,debit_users :int,debit_volume:int,debit_value:int,transaction:int);
group_bank = Group bank_details All;
max = foreach group_bank  Generate 
   ( MAX(bank_details.transaction));

dumb max;





