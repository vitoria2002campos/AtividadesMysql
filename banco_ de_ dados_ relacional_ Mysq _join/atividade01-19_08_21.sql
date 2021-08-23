-- create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,
nome varchar(255),
skill varchar(150),
hp int,
arma varchar(255),
primary key (id)
);

insert into tb_classe (nome, skill, hp, arma) values 
("Feiticeiro" , "Bola de Fogo" , 5 , "Cajado"), 
("Arqueiro" , "Chuva de Flechas" , 6 , "Arco e Flecha"),
("Bruxa" , "Poção da Morte" , 10 , "Caldeirão"),
("Cavaleiro" , "Cavalo Dragão" , 20 , "Excalibur"),
("Curandeiro" , "Ressureição" , 8 , "Gaze");

select *from tb_classe;

create table tb_personagem (
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem(nome, nivel, ataque, defesa, classe_id) values
 ("Mokona" , 100 , 3000, 1000, 5),
 ("Jug" , 100 , 3000, 1000, 2),
 ("Ashe" , 200 , 3000, 2100, 1),
 ("BJL" , 100 , 3900, 3100, 4),
 ("Luq" , 100 , 3080, 5100, 3),
 ("Leoa" , 100 , 3900, 3100, 4),
 ("Cuc" , 100 , 3080, 5100, 3);

-- select *from tb_personagem;

-- select * from tb_personagem where ataque > 2000;

-- select *from tb_personagem where defesa between 1000 and 2000;

-- select *from tb_personagem where nome like "%c%"; 

-- select *from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id; 

-- select *from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id where tb_classe.id =2;
