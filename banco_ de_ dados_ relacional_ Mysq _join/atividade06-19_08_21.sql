create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;


create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    ativo boolean,

	primary key(id)
);


create table tb_curso(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(8,2) not null,
    qtd int not null,
    categoria_id bigint,

    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(tipo,ativo)values
("Desenvolvedor Web",true),
("Desenvolvolvedor Mobile",true),
("Desenvolvedor para Desktop",true),
("Desenvolvedor de projetos",true),
("Desenvolvedor de fluxogramas",true);

insert into tb_curso(nome,preco,qtd,categoria_id)values
("Java",4.00,10,1),
("Javascript",35.00,10,2),
("HTML",3.00,10,3),
("CSS",60.00,10,4),
("Mysql",70.00,10,5),
("Kotlin",10.00,10,1),
("Sass",90.00,10,2),
("Angular",10.00,10,3);

select * from tb_curso where preco > 50.00;
select * from tb_curso where preco between 3.00 and 60.00;
select * from tb_curso where nome like 'J%';

select * from tb_categoria a
inner join tb_curso b
on b.categoria_id = a.id
where b.categoria_id = 2;