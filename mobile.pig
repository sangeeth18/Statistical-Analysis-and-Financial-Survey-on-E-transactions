bank = LOAD '/usr/local/hadoop/group1test/pig/000000_0' 
   USING PigStorage(',')
   as ( bankname:chararray, transaction:int);
group_bank = Group bank All;
max = foreach group_bank  Generate bank.bankname ,
   ( MAX(bank.transaction));
f = filter bank by transaction == 16820286;

dump f;




