 -- create database db_escola;
use db_escola;

create table estudantes(
id bigint auto_increment,
Nome varchar (255),
cpf bigint,
Ano int,
chamada int,
nota float,
primary key (id)
);

insert into estudantes (nome, cpf, ano,chamada,nota) values
("Jessica",306086310-51,8,31,7.5),
("Alex",818343130-58, 9, 25, 10),
("Pablo",162804120-08,3,10,6.5),
("Rosa",479735710-00,2,9,8.5),
("Maria",502039140-90,7,18,9.5),
("Ester",503445470-00,5,16,5.5),
("Mario",240932780-08,8,15,9.0),
("Vitória",261016230-84,3, 26,10);

select * from estudantes where  nota>7;
 select * from estudantes where nota<7;

 update estudantes set nota = 10 where id=5;
