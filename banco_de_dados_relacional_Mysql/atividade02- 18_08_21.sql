-- create database db_ecommerce;
use db_ecommerce;

create table produtos (
id bigint auto_increment,
nome varchar (255) not null,
quantidade int,
preco float not null,
desconto float ,
marca varchar (255),
tamanho varchar (255),
primary key (id)
);

insert into produtos (nome, quantidade, preco,desconto,marca,tamanho) values
("Tenis",50,470,0.3,"Mizuno","37"),
("Camiseta",100,520,0.3,"Oakley","P"),
("Jeans",200,540,0.2,"Le lis Blanc","38"),
("Tenis",50,400,0.0,"Mizuno","37"),
("Camiseta",50,550,0.5,"Oakley","GG"),
("Shorts",50,450,0.4,"Adidas","38"),
("Jaqueta",50,400,0.3,"Nike","G"),
("Tenis",50,300,0.5,"Mizuno","45")
;

select * from produtos where preco >500.00;
select * from produtos where preco < 500.00;

update produtos set preco = 150 where id=5;



