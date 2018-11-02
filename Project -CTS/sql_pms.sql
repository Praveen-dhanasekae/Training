create table policy_payment(

bill_id varchar(20) primary key,
user_id varchar(255) references mainuser(user_id),
policy_id varchar references policy_table(policy_id),
bill_date 
)
;

