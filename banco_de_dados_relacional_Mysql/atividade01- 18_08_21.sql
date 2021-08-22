 -- create database db_rhempresa;
use db_rhempresa;

create table funcionaries(
id  bigint auto_increment,
nome varchar (255) not null,
cpf bigint not null,
salario float,
cep varchar (255), 
cargo varchar (255),
primary key (id)
);

insert into funcionaries( nome,cpf,salario,cep,cargo)values 
 ("Roberta",976290490-72, 1000,"69313-135"," estagiaria administrativa"),
 ("Regina",649200050-16, 4000,"75523-290","desenvolvedora web"),
 ("Caio",302624550-05, 4500,"58307-030","auxiliar administrativo"),
 ("Rosa",621370460-40, 4500,"45603-730","desenvolvedora web"),
 ("Matheus",873351410-01, 1800,"76901-228","Motoboy")
 ;

select * from funcionaries where salario >2000;
select * from funcionaries where salario < 2000;

update funcionaries set salario = 5000 where id = 3;
select * from funcionaries 