create database pai_filho;

use pai_filho;

create table pai (
  id_pai int not null,
  pai varchar(35),
  salario numeric(9,2),
  primary key(id_pai)
);

create table filho (
 Id_filho int not null,
 id_pai int,
 filho varchar(35),
 idade int,
 primary key(id_filho),
 foreign key(id_pai) references pai(Id_pai)
);

-- select * from pai;
-- select * from filho;

insert into pai values(1,'Denival', 1000);
insert into pai values(2,'Gerson', 2000);
insert into pai values(3,'Regis', 3000);
insert into pai values(4,'Deinha', 4000);

insert into filho values(1,1,'Denival Jr', 13);
insert into filho values(2,1,'Jamilly', 9);
insert into filho values(3,2,'Teresa Evelin', 8);
insert into filho values(4,3,'Luana', 10);
insert into filho values(5,4,'Marilia', 30);

-- show create table filho