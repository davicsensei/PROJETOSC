/*1. Sele��o dos e-mails de todos os clientes.*/
select email from dbo.cliente

/*2. Sele��o do e-mail do cliente com c�digo 1*/
select email from dbo.cliente where id in (1)

/*3. Sele��o de todos os pedidos do cliente com nome �Jo�o Batista�.*/
select * from dbo.cliente, dbo.item_pedido, dbo.pedido, dbo.produto where nome in ('Jo�o Batista')

/* Sele��o dos produtos que possuem t�tulos que contenha a palavra
�Samsung�.*/
select * from dbo.cliente, dbo.item_pedido, dbo.pedido, dbo.produto where titulo like ('%Samsung%')

/*5. Inclus�o do cliente �Karolina Xavier� com e-mail �karoline@gmail.com�. */
select * from dbo.cliente;
insert into dbo.cliente (id,nome,email,senha) 
values (6, 'Karolina Xavier', 'karoline@gmail.com', 123098)

/*6. Inclus�o de um pedido para o cliente �Karolina Xavier� com um total de R$
15.000,00. */
select * from dbo.pedido;
insert into dbo.pedido (id, id_cliente, data_pedido, total)
values (5, 6, '2017-04-11', 15.000000)

update pedido set total = (15.456) where id = '5'


/*7. Inclus�o de tr�s itens de pedido com o produto celular �Xperia ZQ�, com os
valores R$ 1.000,00 referente ao valor do produto, R$ 70,00 referente ao
valor da capa e 10,00 referente ao chip */
select * from dbo.pedido;
select * from dbo.produto;
select * from dbo.item_pedido;

insert into item_pedido values (5, 2, 1000, 1, 1080);

insert into produto values (4, 'Capa', 'capinha para Xperia', 70, 1243);

insert into produto values (5, 'Chip', 'Chip para Xperia', 10, 123456);

/* 8. Dele��o de todos os pedidos e itens de pedidos do cliente �Karoline Xavier�.*/
select * from dbo.pedido;
select * from dbo.item_pedido;
select * from dbo.cliente;

delete from item_pedido where id_pedido = 5
delete from pedido where id = 5


/*9. Altera��o do e-mail do cliente �Karoline Xavier� para �xavier@gmail.com.br�. */
select * from dbo.cliente;

update cliente 
set email = 'xavier@gmail.com.br'
where id = 6



