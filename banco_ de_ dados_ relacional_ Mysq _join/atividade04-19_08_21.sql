-- create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
Setor varchar (255),
Origem varchar (255),
CustoPor varchar (255),
primary key (id)
);

insert into tb_categoria (Setor, Origem, CustoPor) Values 
("Legumes", "Horta da alegria", "KG"),
("Frutas", "imports", "UN"),
("Frutas", "Brasil horta", "KG"),
("Verduras", "horta da vitoria", "UN"),
("Verduras", "Zé das frutas", "UN");


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
Nome varchar (255),
descricao varchar (255),
EmEstoque bigint,
Preco float,
CodigoDeBarra bigint,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (Nome, descricao, EmEstoque, Preco, CodigoDeBarra, categoria_id) Values
 ("Abobora", "Fortalece o sistema imunologico", 40, "3.99", 8938296918, 1),
 ("alho", "Ajuda no sistema respiratório", 70, 5.99, 1110742383, 1),
 ("Melão ", "Rico em calcio e nutrientes", 15, 132.00, 7134419069, 4),
 ("batata", "Ajuda na estrutura óssea", 45, 5.00, 4022979385, 5),
 ("Alface", "Oxidante natural", 31, 5.00, 2974885468, 4),
 ("kiwi", "Favorece os ossos e os dentes", 10, 6.00, 67431258794, 2),
 ("limao", "Mantem o colesterol sob controle", 17, 4.00, 51798100311, 5),
 ("banana", "Ajuda a regular os niveis da pressão arterial", 80, 8.00, 3797738166, 3);

select * from tb_produto;

select * from tb_produto where Preco > 50;

select * from tb_produto where Preco between 3 and 60;

select * from tb_produto where Nome like "C%";

select tb_produto.Nome, tb_produto.Empacotagem, tb_produto.EmEstoque, tb_produto.Preco, tb_produto.CodigoDeBarra, tb_categoria.Setor, tb_categoria.Origem, tb_categoria.CustoPor
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.Nome, tb_produto.Empacotagem, tb_produto.EmEstoque, tb_produto.Preco, tb_produto.CodigoDeBarra, tb_categoria.Setor, tb_categoria.Origem, tb_categoria.CustoPor
from tb_produto inner join
tb_categoria on tb_categoria.id = tb_produto.categoria_id where Setor like "%Verduras%";
