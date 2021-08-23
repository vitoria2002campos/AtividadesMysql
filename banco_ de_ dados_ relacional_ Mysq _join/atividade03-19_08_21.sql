-- create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
setor varchar (255),
primary key (id)
);

insert into tb_categoria (setor) values 
("medicamento"),
("cosmeticos"),
("higiene Pessoal"),
("infantil"),
("Primeiros Socorros");

select * from tb_categoria;


create table tb_produto(
id bigint auto_increment,
produtos varchar (255) not null,
preco decimal not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto(produtos, preco, categoria_id) values 
("Leite em pó", 2.00, 4),
("Buscopam", 1000.00, 1),
("Sabonete liquido", 200000.00, 3),
("Batom", 6.00, 2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60; 

select * from tb_produto where produtos like "%b%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where categoria_id = 2;
