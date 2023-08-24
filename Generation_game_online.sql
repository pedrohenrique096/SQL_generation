create database db_generation_game_online;
use db_generation_game_online;
create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
poderAtaque int,
poderDefesa int,
velocidade int,
primary key (id)
);
create table tb_classes(
id bigint auto_increment,
arqueiro_A varchar (255),
escudeiro_E varchar (255),
primary key (id));

select * from tb_personagens;
select * from tb_classes;

alter table tb_personagens add classes_id bigint;
alter table tb_personagens add constraint fk_personagens_classes foreign key (classes_id) references tb_classes(id);
alter table tb_classes modify arqueiro_A int;
alter table tb_classes modify escudeiro_E int;


insert into tb_classes (arqueiro_A,escudeiro_E) values (1000,500);
insert into tb_classes (arqueiro_A,escudeiro_E) values (1500,3000);
insert into tb_classes (arqueiro_A,escudeiro_E) values (800,2500);
insert into tb_classes (arqueiro_A,escudeiro_E) values (950,700);
insert into tb_classes (arqueiro_A,escudeiro_E) values (3500,700);

select * from tb_classes;

insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Greg",1000,700,300,1);
insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Violet",2000,900,900,2);
insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Scrig",3000,700,400,4);
insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Flor",4000,700,500,3);
insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Pergs",1000,700,600,5);
insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Luvix",2000,700,700,3);
insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Greg",1000,700,300,1);
insert into tb_personagens (nome,poderAtaque,poderDefesa,velocidade,classes_id) values ("Greg",1000,700,300,1);

select * from tb_personagens;

select * from tb_personagens where poderAtaque > 2000;
select * from tb_personagens where poderDefesa between 1000 and 2000;
select * from tb_personagens where nome like "%c%";

select nome,poderAtaque,poderDefesa,velocidade from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id;
select nome,poderAtaque,poderDefesa,velocidade from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id
where tb_classes.arqueiro_A = 800;






