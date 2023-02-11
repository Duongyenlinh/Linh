
drop database if exists freshtrainingmanagement;
create database if not exists freshtrainingmangement;
use freshtrainingmangement;
create table Trainee(
TraineeID int primary key auto_increment not null,
Full_name varchar(50) not null,
Brith_Date date not null,
Gender enum('male','female','unknow'),
ET_IQ tinyint check (ET_IQ >= 0 and ET_IQ <=20),
ET_Gmath tinyint check (ET_Gmath >=0 and ET_Gmath <=20),
ET_English tinyint check (ET_English >=0 and ET_English <=20),
Traning_class varchar(50) not null,
Evaluation_notes varchar(200)
);
alter table Trainee
add VTI_account varchar(150) not null unique;