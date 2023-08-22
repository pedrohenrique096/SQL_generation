create database db_Rh;
use db_Rh;
create table tb_Rh(
id bigint auto_increment,
nome varchar(200) not null,
idade int,
RG bigint,
CPF bigint not null,
sexo varchar(10),
primary key (id)	
);

insert into tb_Rh (nome,idade,RG,CPF,sexo,salario) values ("Maicon",23,396308296,37483513802,"Masculino",2.000);
insert into tb_Rh (nome,idade,RG,CPF,sexo,salario) values ("Juliana",26,396308211,37483512830,"Feminino",6.000);
insert into tb_Rh (nome,idade,RG,CPF,sexo,salario) values ("Roberto",64,5983042123,45512348830,"Masculino",20.000);
insert into tb_Rh (nome,idade,RG,CPF,sexo,salario) values ("Hanna Monthana",33,348319533,47435869837,"Feminino",80.000);
insert into tb_Rh (nome,idade,RG,CPF,sexo,salario) values ("Miguel",20,348348271,37485812805,"Masculino",1.5000);

select * from tb_Rh;
delete from tb_Rh where id=7;
alter table  tb_Rh add salario decimal (6,2);
delete from tb_Rh where id<7;

select * from tb_Rh where salario > 2000;
select * from tb_Rh where salario < 2000;





