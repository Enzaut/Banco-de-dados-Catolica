create database dever_dados;

use dever_dados;
drop table produto;
create table produto(
id_produto int primary key auto_increment,
Categoria enum
('Equipamentos de Futebol','Roupas Esportivas','Acessórios de Treino'),
Quant_Estoque int ,
Preco decimal(6,2) NOT NULL,
Nome varchar(60) NOT NULL
);

insert into produto (id_produto,Categoria, Quant_Estoque, Preco, Nome)
values(1,"Equipamentos de Futebol", 100, 89.90, "Camisa de Futebol"),
(2,"Roupas Esportivas", 50, 299.99, "Tênis de Corrida"),
(3, "Acessórios de Treino", 200, 25.00, "Faixa de Cabeça");

-- Primeira consulta
select * from produto;

-- Segunda consulta
select * from produto where Categoria ="Equipamentos de Futebol";

-- Terceira consulta
select * from produto where Quant_Estoque >= 50;

-- Quarta consulta
update produto set Preco = 279.99 where Nome = "Tênis de Corrida";

-- Quinta consulta
alter table produto modify column Categoria enum
('Equipamentos de Futebol','Roupas Esportivas','Acessórios de Treino','Calçados Esportivos');
update produto set Categoria = "Calçados Esportivos" where nome = "Tênis de Corrida";

-- Sexta consulta
delete from produto where nome = "Faixa de Cabeça";

show tables;
show columns from produto;
set SQL_SAFE_UPDATES = 0;