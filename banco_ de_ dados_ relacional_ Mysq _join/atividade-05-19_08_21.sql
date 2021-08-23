-- create database  db_construindo_a_nossa_vida;
use  db_construindo_a_nossa_vida;

create table tb_categoria(
		id bigint auto_increment,
        Categoria varchar(255) not null,
        Tipo varchar(255) not null,
        Quantidade int,
        Disponivel boolean not null,
	    primary key(id)
);

insert into tb_categoria(Categoria, Tipo, Quantidade, Disponivel)values
("Roupas", "shorts", 70, true),
("Roupas", "meias", 60, true),
("roupa de cama", "jogo completo", 90, true),
("Calçados", "Tênis", 150, true),
("Calçados", "Sandália", 180, true);

select * from tb_categoria order by id;

create table tb_produto(
	id bigint auto_increment,
	Nome varchar(255) not null,
    Cor varchar(255) not null,
    Tamanho varchar(255) not null,
    Disponivel boolean not null,
    Preco float not null,
    categoria_id bigint,
	primary key(id),
	foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values
("shorts praiano", "azul", "37", true, 50.00, 1),
("meias coloridas", "colorida", "37", true, 59.00, 4),
("Roupa de cama casal", "branco", "L", true, 40.00, 5),
("mizuno", "Azul", "37", true, 800.00, 6),
("mizuno", "roxo", "35", true, 400.00, 7),
("Oculos", "Colorida", "pequeno", true, 3.00, 5),
("camiseta", "Preta", "PP", true, 500.00, 5),
("Vestido ", "rosa", "G", true, 40.00, 1);

select * from tb_produto order by id;

select * from tb_produto where Preco > 50.00;

select * from tb_produto where Preco between 3.00 and 60.00;

select * from tb_produto where Nome like 'C%';

select tb_produto.Nome, tb_produto.Preco from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.Tipo = "Roupas";