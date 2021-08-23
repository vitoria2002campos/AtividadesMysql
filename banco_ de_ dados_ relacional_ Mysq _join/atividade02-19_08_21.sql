 -- create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
sabor varchar (255),
Bordarecheada boolean,
primary key (id)
);

insert into tb_categoria (sabor, bordarecheada) values 
 ("salgada", true),
 ("salgada", false),
 ("doce", true),
 ("doce", false);

select * from tb_categoria;


create table tb_pizza(
id bigint auto_increment,
cardapio varchar (255) not null,
preco decimal not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza(cardapio, preco, categoria_id) values
 ("Catupiry", 500.00, 1 ),
 ("Frango", 500.00, 2),
 ("Calabresa", 800.00, 1),
 ("Espinafre", 300.00, 1), 
 ("Atum", 1000.00, 2),
 ("Lombinho", 900.00, 1),
 ("Mussarela", 5.00, 2),
 ("Coco", 10.00, 3),
 ("Brigadeiro", 2.00, 3),
 ("M&Ms", 2000.00, 4);


select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60; 

select * from tb_pizza where cardapio like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id order by nome;

select * from tb_pizza where categoria_id = 3;
