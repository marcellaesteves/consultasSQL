create table cliente (
	idcliente integer not null,
	nome varchar(50) not null,
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,)

	constraint pk_cln_idcliente primary key (idcliente)
);

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'Porto União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (2, 'Geraldo', '12343299291', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap', 'Centro', 'P União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart', 'Cto', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (5, 'Amanda', '99982838828', '38382', '1991-03-04', 'F', 'Jorn', 'Italiana', 'Av Central', '100', null, 'São Pedro', 'General Carneiro', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (6, 'Ângelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileira', 'Av Beira Mar', '300', null, 'Ctr', 'São Paulo', 'SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (7, 'Anderson', null, null, null, 'M', 'Prof', 'Italiano', 'Av Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (8, 'Camila', '9998282828', null, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', null, 'Centro', 'Uberlândia', 'MG');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (9, 'Cristiano', null, null, null, 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (10, 'Fabrício', '8828282828', '32323', null, 'M', 'Estudante', 'Brasileiro', null, null, null, null, 'PU', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (11, 'Fernanda', null, null, null, 'F', null, 'Brasileira', null, null, null, null, 'Porto União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud', null, 'Rua das Laranjeiras', '200', null, 'C Nova', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (13, 'Diego', '1010191919', '111939', null, 'M', 'Professor', 'Alemão', 'Rua Central', '455', 'Casa', 'Cidade N', 'São Paulo', 'SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (14, 'Jeferson', null, null, '1983-07-01', 'M', null, 'Brasileiro', null, null, null, null, 'União da Vitória', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (15, 'Jessica', null, null, null, 'F', 'Estudante', null, null, null, null, null, 'União da Vitória', 'PR');

select * from cliente;

select nome, data_nascimento from cliente;

select nome, data_nascimento as "Data de Nascimento" from cliente;

--Concatenar

select 'CPF: ' || cpf || ' RG: ' || rg from cliente;

--Limitar número de pesquisa
select * from cliente limit 3;

--Filtro
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%'; --Começa com c

select nome from cliente where nome like '%c%'; --Tem c no meio do nome

--Filtro entre datas
select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

--Mostra todos que não tem o rg null
select nome, rg from cliente where rg is not null;

--Mostra todos que tem o rg null
select nome, rg from cliente where rg is null;

--Ordenação
select nome from cliente order by nome asc; --Alfabética

select nome from cliente order by nome desc; --Do último para o primeiro

--Exercícios aula 14
select nome, genero, profissao from cliente order by nome desc;

select nome from cliente where nome like '%r%';

select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%a';

select nome, bairro from cliente where bairro like 'Centro';

select nome, complemento from cliente where complemento like 'A%';

select nome, genero from cliente where genero like 'F';

select nome, cpf from cliente where cpf is null;

select nome, profissao from cliente order by profissao asc;

select nome, nacionalidade from cliente where nacionalidade like 'Brasileira';

select nome, numero from cliente where numero is not null;

select nome, uf from cliente where uf like 'SC';

select nome, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

select 'NOME: ' || nome || ' Logradouro: ' || logradouro || ' Número: ' || numero || ' Complemento: ' || complemento || ' Bairro: ' || bairro || ' Município: ' || municipio || ' UF: ' || uf from cliente;

--Update e delete
update cliente set nome = 'Teste' where idcliente = 1;

select * from cliente;

update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;

insert into cliente (idcliente, nome) values (16, 'João');
delete from cliente where idcliente = 16;

--Exercícios aula 18
insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (16, 'Maicon', '12349598421', '1234', '1985-10-10', 'F', 'Empresário', null, null, null, null, null, 'Florianópolis', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', null, '4631', null, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (18, 'Sandra', null, null, null, 'M', 'Professor', 'Italiana', null, '12', 'Bloco A', null, null, null);

update cliente set cpf = '45390569432', genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = 16;

update cliente set data_nascimento = '1978-04-01', genero = 'M' where idcliente = 17;

update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idcliente = 18;

select nome from cliente;

delete from cliente where idcliente = 16;

delete from cliente where idcliente = 18;

--Criar mais tabelas
create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

insert into profissao (idprofissao, nome)
values (1, 'Estudante');

insert into profissao (idprofissao, nome)
values (2, 'Engenheiro');

insert into profissao (idprofissao, nome)
values (3, 'Pedreiro');

insert into profissao (idprofissao, nome)
values (4, 'Jornalista');

insert into profissao (idprofissao, nome)
values (5, 'Professor');

select * from profissao;

create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

insert into nacionalidade (idnacionalidade, nome)
values (1, 'Brasileira');

insert into nacionalidade (idnacionalidade, nome)
values (2, 'Italiana');

insert into nacionalidade (idnacionalidade, nome)
values (3, 'Norte-americana');

insert into nacionalidade (idnacionalidade, nome)
values (4, 'Alemã');

select * from nacionalidade;

create table complemento (
	idcomplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

insert into complemento (idcomplemento, nome)
values (1, 'Casa');

insert into complemento (idcomplemento, nome)
values (2, 'Apartamento');

select * from complemento;

create table bairro (
	idbairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro (idbairro, nome)
values (1, 'Cidade Nova');

insert into bairro (idbairro, nome)
values (2, 'Centro');

insert into bairro (idbairro, nome)
values (3, 'São Pedro');

insert into bairro (idbairro, nome)
values (4, 'Santa Rosa');

select * from bairro;

alter table cliente rename column profissao to idprofissao;

--Apagando coluna
alter table cliente drop idprofissao;

--Adicionando coluna
alter table cliente add idprofissao integer;

select * from cliente;

--Relacionando tabelas com fk - foireign key
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

--Adicionando profissões
update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);

alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer;
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);
update cliente set idnacionalidade = 1 where idcliente in (1, 2, 3, 4, 6, 10, 11, 14);
update cliente set idnacionalidade = 2 where idcliente in (5, 7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9, 13);

alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);

update cliente set idcomplemento = 1 where idcliente in (1);
update cliente set idcomplemento = 1 where idcliente in (4, 9, 13);
update cliente set idcomplemento = 2 where idcliente in (2, 3, 7);

select * from cliente;

alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);
update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4, 5);
update cliente set idbairro = 4 where idcliente in (7);

create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federacao primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);

insert into uf (iduf, nome, sigla)
values (1, 'Santa Catarina', 'SC');

insert into uf (iduf, nome, sigla)
values (2, 'Paraná', 'PR');

insert into uf (iduf, nome, sigla)
values (3, 'São Paulo', 'SP');

insert into uf (iduf, nome, sigla)
values (4, 'Minas Gerais', 'MG');

insert into uf (iduf, nome, sigla)
values (5, 'Rio Grande do Sul', 'RS');

insert into uf (iduf, nome, sigla)
values (6, 'Rio de Janeiro', 'RJ');

select * from uf;

create table municipio (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

insert into municipio (idmunicipio, nome, iduf)
values (1, 'Porto União', 1);

insert into municipio (idmunicipio, nome, iduf)
values (2, 'Canoinhas', 1);

insert into municipio (idmunicipio, nome, iduf)
values (3, 'Porto Vitória', 2);

insert into municipio (idmunicipio, nome, iduf)
values (4, 'General Carneiro', 2);

insert into municipio (idmunicipio, nome, iduf)
values (5, 'São Paulo', 3);

insert into municipio (idmunicipio, nome, iduf)
values (6, 'Rio de Janeiro', 6);

insert into municipio (idmunicipio, nome, iduf)
values (7, 'Uberlândia', 4);

insert into municipio (idmunicipio, nome, iduf)
values (8, 'Porto Alegre', 5);

insert into municipio (idmunicipio, nome, iduf)
values (9, 'União da Vitória', 2);

alter table cliente drop municipio;
alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cln_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente set idmunicipio = 2 where idcliente in (3, 12);
update cliente set idmunicipio = 3 where idcliente in (4);
update cliente set idmunicipio = 4 where idcliente in (5);
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente in (7);
update cliente set idmunicipio = 7 where idcliente in (8);
update cliente set idmunicipio = 8 where idcliente in (9);
update cliente set idmunicipio = 9 where idcliente in (14, 15);
select * from cliente;

--Exercícios aula 23
create table fornecedor (
	idfornecedor integer not null,
	nome varchar(50) not null,

	constraint pk_frn_idfornecedor primary key (idfornecedor),
	constraint un_frn_idfornecedor unique (nome)
);

create table vendedor (
	idvendedor integer not null,
	nome varchar(50) not null,

	constraint pk_vdd_idvendedor primary key (idvendedor),
	constraint un_vdd_nome unique (nome)
);

create table transportadora (
	idtransportadora integer not null,
	idmunicipio integer not null,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(50),

	constraint pk_trn_idtransportadora primary key (idtransportadora),
	constraint fk_trn_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_trn_nome unique (nome)
);

create table produto (
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,

	constraint pk_prd_idproduto primary key (idproduto),
	constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)
);

insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');
select * from vendedor;

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. Máquinas');
select * from fornecedor;

insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero)
values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');

insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero)
values (2, 5, 'União Transportes', null, null);
select * from municipio;

insert into produto (idproduto, idfornecedor, nome, valor)
values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor)
values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor)
values (3, 2, 'Placa mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor)
values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor)
values (5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor)
values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor)
values (7, 1, 'Gabinete', 35);

create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);

update cliente set nome = 'Manoel' where idcliente = 1;

select * from cliente;
select * from transportadora;
select * from vendedor;

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 11, 2, 5);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (4, '2008-04-05', 1000, 8, 1, 7);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (5, '2008-04-06', 200, 9, 2, 6);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (6, '2008-04-06', 1985, 10, 1, 6);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (7, '2008-04-06', 800, 3, 1, 7);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (8, '2008-04-06', 175, 3, null, 7);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (9, '2008-04-07', 1300, 12, null, 8);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (10, '2008-04-10', 200, 6, 1, 8);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (11, '2008-04-15', 300, 15, 2, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (12, '2008-04-20', 500, 15, 2, 5);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (13, '2008-04-20', 350, 9, 1, 7);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (14, '2008-04-23', 300, 2, 1, 5);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (15, '2008-04-25', 200, 11, null, 5);

create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (2, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (3, 4, 2, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (4, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (4, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (5, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6, 1, 2, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6, 7, 1, 35);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (6, 4, 1, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (7, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (8, 7, 5, 35);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (9, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (9, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (10, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (11, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (11, 6, 1, 100);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (12, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (13, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (13, 4, 1, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (14, 6, 3, 100);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (15, 3, 1, 200);


select * from pedido_produto;

select nome from vendedor order by nome asc;
select nome, valor from produto where valor > 200 order by valor asc;
select nome, valor, valor + (valor * 10 /100) from produto order by nome asc;
select * from uf;
select nome from municipio where iduf = 5;
select idpedido, valor from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor asc;
select idpedido, valor from pedido where valor > 1000 and valor < 1500;
select * from pedido;
select idpedido, valor from pedido where valor < 100 or valor > 500;
select idpedido, valor from pedido where idvendedor = 1 order by valor asc;
select * from cliente;
select idpedido, valor from pedido where idcliente = 1 order by valor asc;
select idpedido, valor from pedido where idvendedor = 1 and idcliente = 15 order by valor asc;
select idpedido, valor from pedido where idtransportadora = 2;
select idpedido, valor from pedido where idvendedor = 5 or idvendedor = 7;
select * from vendedor;
select * from uf;
select nome from cliente where idmunicipio = 1 or idmunicipio = 9;
select nome from cliente where logradouro is null;
select nome from vendedor where nome like 'S%';
select nome from vendedor where nome like '%a';
select nome from vendedor where nome not like 'A%';
select nome from municipio where nome like 'P%' and idmunicipio = 1;
select nome from transportadora where logradouro is not null;
select * from pedido_produto where idpedido = '1';
select * from pedido_produto where idpedido = '6' or idpedido = '10';

--Funções Agregadas
select avg(valor) from pedido; --avg faz a média
select count(idmunicipio) from municipio; --conta somente os not null
select count(*) from municipio;
select count(logradouro) from transportadora;
select count(idmunicipio) from municipio where iduf = 2;
select max(valor) from pedido; --Maior valor
select max(valor), min(valor) from pedido; --Maior valor e menor
select sum(valor) from pedido; --soma os valores

--Exercícios aula 33
select idcliente, sum(valor) from pedido group by idcliente;
select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500;
select idvendedor, avg(valor) from pedido group by idvendedor having sum(valor) > 200;
select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500;
select idvendedor, sum(valor) from pedido group by idvendedor;
select count(idmunicipio) from municipio;
select * from uf;
select count(idmunicipio) from municipio where iduf = 1 or iduf = 2;
select iduf, count(idmunicipio) from municipio group by iduf;
select count(idcliente) from cliente where logradouro is not null;
select count(idcliente), idmunicipio from cliente group by idmunicipio;
select count(idfornecedor) from fornecedor;
select count(idproduto), idfornecedor from produto group by idfornecedor;
select * from fornecedor;
select avg(valor) from produto where idfornecedor = 1;
select * from cliente;
select nome, valor from produto order by valor desc limit 1;
select nome, valor from produto order by valor asc limit 1;
select avg(valor) from produto;
select count(idtransportadora) from transportadora;
select sum(valor), idcliente from pedido group by idcliente;
select sum(valor), idvendedor from pedido group by idvendedor;
select sum(valor), idtransportadora from pedido group by idtransportadora;
select sum(valor), data_pedido from pedido group by data_pedido;
select sum(valor), idcliente, idvendedor, idtransportadora from pedido group by idcliente, idvendedor, idtransportadora;
select avg(valor) from pedido where idvendedor = 1;
select avg(valor) from pedido where idcliente = 15;
select count(idpedido) from pedido where idtransportadora = 1;
select count(idpedido), idvendedor from pedido group by idvendedor;
select count(idpedido), idcliente from pedido group by idcliente;
select count(idpedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25';
select count(idpedido) from pedido where valor > 1000;
select * from pedido_produto;
select sum(quantidade) from pedido_produto where idproduto = 1;
select sum(valor_unitario * quantidade), idpedido from pedido_produto group by idpedido;
select sum(quantidade), idpedido from pedido_produto group by idpedido;
select sum(valor_unitario) from pedido_produto;
select avg(valor_unitario * quantidade) from pedido_produto where idpedido = 6;
select count(quantidade) from pedido_produto;
select count(quantidade), idproduto from pedido_produto group by idproduto;

--Relacionamento com joins

--Informa inclusive os null
select 
	cliente.nome as cliente, 
	profissao.nome as profissao
from 
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao;

--Retorna somente os not null
select 
	cliente.nome as cliente, 
	profissao.nome as profissao
from 
	cliente
inner join
	profissao on cliente.idprofissao = profissao.idprofissao;

--Exercícios aula 39
select 
	cln.nome as cliente, 
	prf.nome as profissao,
	ncn.nome as nacionalidade,
	cln.logradouro,
	cln.numero,
	cmp.nome as complemento,
	brr.nome as bairro,
	mnc.nome as municipio,
	uf.nome as uf
from 
	cliente as cln
left outer join
	profissao prf on cln.idprofissao = prf.idprofissao
left outer join
	nacionalidade ncn on cln.idnacionalidade = ncn.idnacionalidade
left outer join
	complemento cmp on cln.idcomplemento = cmp.idcomplemento
left outer join
	bairro brr on cln.idbairro = brr.idbairro
left outer join
	municipio mnc on cln.idmunicipio = mnc.idmunicipio
left outer join
	uf on uf.iduf = mnc.iduf;

select
	prd.nome,
	prd.valor,
	frn.nome
from
	produto as prd
left outer join
	fornecedor as frn on frn.idfornecedor = prd.idfornecedor;

select
	trn.nome,
	mnc.nome as municipio
from
	transportadora as trn
left outer join
	municipio as mnc on mnc.idmunicipio = trn.idmunicipio;

select * from cliente;


select
	pdd.data_pedido,
	pdd.valor,
	cln.nome,
	trn.nome as transportadora,
	vdd.nome as vendedor
from
	pedido pdd
left outer join
	cliente cln on cln.idcliente = pdd.idcliente
left outer join
	transportadora trn on trn.idtransportadora = pdd.idtransportadora
left outer join
	vendedor vdd on vdd.idvendedor = pdd.idvendedor;

--5
select
	prd.nome as produto,
	pdp.quantidade,
	pdd.idpedido,
	prd.valor as valor_unitario
from
	produto prd
left outer join
	pedido_produto pdp on prd.idproduto = pdp.idproduto
left outer join
	pedido pdd on pdd.idpedido = pdp.idpedido;

select
	pdd.data_pedido,
	cln.nome
from
	pedido pdd
left outer join
	cliente cln on cln.idcliente = pdd.idcliente
order by
	nome;

select
	pdd.data_pedido,
	cln.nome
from
	cliente cln
left outer join
	pedido pdd on cln.idcliente = pdd.idcliente
order by
	nome;

select
	mnc.nome,
	count(cln.idmunicipio)
from
	municipio mnc
left outer join
	cliente cln on cln.idmunicipio = mnc.idmunicipio
group by
	mnc.nome;

select
	frn.nome,
	count(prd.idproduto)
from
	fornecedor frn
left outer join
	produto prd on prd.idfornecedor = frn.idfornecedor
group by
	frn.nome;


select
	sum(pdd.valor),
	cln.nome
from
	pedido pdd
left outer join
	cliente cln on cln.idcliente = pdd.idcliente
group by
	cln.nome;

select
	sum(pdd.valor),
	vdd.nome
from
	pedido pdd
left outer join
	vendedor vdd on vdd.idvendedor = pdd.idvendedor
group by
	vdd.nome;

select
	sum(pdd.valor),
	trn.nome
from
	pedido pdd
left outer join
	transportadora trn on trn.idtransportadora = pdd.idtransportadora
group by
	trn.nome;

select
	sum(pdp.quantidade),
	prd.nome
from
	pedido_produto pdp
left outer join
	produto prd on prd.idproduto = pdp.idproduto
group by
	prd.nome;	

select
	sum(pdd.valor),
	pdd.data_pedido
from
	pedido pdd
group by
	pdd.data_pedido;

select 
	pdd.data_pedido,
	sum(pdp.quantidade)
from
	pedido pdd
left outer join
	pedido_produto pdp on pdp.idpedido = pdd.idpedido
group by
	pdd.data_pedido;


--Comandos Adicionais
--Extrair dia e mês da data
select 
	data_pedido, 
	extract(day from data_pedido),
	extract(month from data_pedido),
	extract(year from data_pedido)
from 
	pedido;

--Pesquisar partes de algo (substring)
select nome, substring(nome from 1 for 5), substring(nome, 2) from cliente;

--Converter tudo em maiúsculo
select nome, upper(nome) from cliente;

--Trocar o campo do nulo por uma msg
select nome, cpf, coalesce(cpf, 'Não foi informado') from cliente;

--Case
select 
	case sigla
		when 'PR' then 'Paraná'
	else 'Outros'
	end as uf
from
	uf;

--Exercícios Aula 44
select
	nome,
	extract(month from data_nascimento),
	coalesce(extract(month from data_nascimento), 0)
from
	cliente;

select
	nome,
	case extract(month from data_nascimento)
		when '01' then 'Janeiro'
		when '02' then 'Fevereiro'
		when '03' then 'Março'
		when '04' then 'Abril'
		when '05' then 'Maio'
		when '06' then 'Junho'
		when '07' then 'Julho'
		when '08' then 'Agosto'
		when '09' then 'Setembro'
		when '10' then 'Outubro'
		when '11' then 'Novembro'
		when '12' then 'Dezembro'
	else 'Não Informado'
	end data_nasc
from
	cliente;

select
	nome,
	coalesce(extract(year from data_nascimento), 0)
from
	cliente;

select 
	substring(nome from 5 for 10)
from
	municipio;

select
	nome,
	case genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	else 'Outros'
	end genero
from
	cliente;

select
	nome,
	case
		when valor >= 500 then 'Acima de 500'
	else 'Abaixo de 500'
	end valor
from
	produto;

--Subconsultas
select
	data_pedido,
	valor
from pedido
where 
	valor > (select avg(valor) from pedido);

select
	pdd.data_pedido,
	pdd.valor,
	(select sum(quantidade) from pedido_produto pdp where pdp.idpedido = pdd.idpedido) as total
from
	pedido pdd;
	
select avg(valor) from pedido;

update pedido set valor = valor + ((valor * 5)/ 100)
where valor > (select avg(valor) from pedido)

--Exercícios aula 47
select * from cliente;
select
	nome
from 
	cliente
where	
	idmunicipio = (select idmunicipio from cliente where nome = 'Manoel')
and
	idcliente <> 1;
	
select
	data_pedido,
	valor
from
	pedido
where
	valor < (select avg(valor) from pedido);

select
	cln.nome,
	pdd.data_pedido,
	pdd.valor,
	vdd.nome
from
	pedido pdd
left outer join
	cliente cln on pdd.idcliente = cln.idcliente
left outer join
	vendedor vdd on pdd.idvendedor = vdd.idvendedor
where
	(select sum(quantidade) from pedido_produto where pedido_produto.idpedido = pdd.idpedido) >= 2;
	
select * from transportadora;
select
	nome
from
	cliente cln
where
	idmunicipio = (select idmunicipio from transportadora where nome = 'BS. Transportes');

select
	nome,
	idmunicipio
from 	
	cliente
where
	idmunicipio in (select idmunicipio from transportadora);

update
	pedido
set
	valor = valor + ((valor * 5) / 100)
where
	(select sum(pdp.valor_unitario) from pedido_produto pdp where pdp.idpedido = pedido.idpedido) > (select avg(valor_unitario) from pedido_produto);


select
	cln.nome,
	(select count(idpedido) from pedido pdd where pdd.idcliente = cln.idcliente) as total
from
	cliente cln;

select
	cln.nome,
	count(pdd.idcliente)
from
	pedido pdd
left outer join
	cliente cln on pdd.idcliente = cln.idcliente
group by
	cln.nome;

--Views
create view cliente_profissao as
select
	cln.nome as cliente,
	prf.nome as profissao
from 
	cliente cln
left outer join
	profissao prf on cln.idprofissao = prf.idprofissao;

select * from cliente_profissao where profissao = 'Jornalista';

create view cliente_informacoes as
select
	cln.nome as cliente,
	prf.nome as profissao,
	ncn.nome as nacionalidade,
	cmp.nome as complemento,
	mnc.nome as municipio,
	uf.nome as uf,
	brr.nome as bairro,
	cln.cpf,
	cln.rg,
	cln.data_nascimento,
	case cln.genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	else 'Outros'
	end genero,
	cln.logradouro,
	cln.numero,
	cln.observacoes
from
	cliente cln
left outer join
	profissao prf on prf.idprofissao = cln.idprofissao
left outer join
	nacionalidade ncn on ncn.idnacionalidade = cln.idnacionalidade
left outer join
	complemento cmp on cmp.idcomplemento = cln.idcomplemento
left outer join
	municipio mnc on mnc.idmunicipio = cln.idmunicipio
left outer join
	uf on uf.iduf = mnc.iduf
left outer join
	bairro brr on brr.idbairro = cln.idbairro;

select * from cliente_informacoes;
select * from uf;

create view municipio_uf as
select
	mnc.nome as municipio,
	uf.nome as uf,
	uf.sigla
from
	municipio mnc
left outer join
	uf on uf.iduf = mnc.iduf;

select * from municipio_uf;

create view produto_info as
select
	prd.nome as produto,
	prd.valor,
	frn.nome as forncedor
from
	produto prd
left outer join
	fornecedor frn on frn.idfornecedor = prd.idfornecedor;

select * from produto_info;
select * from transportadora;

create view transportadora_infos as
select
	trn.nome as transportadora,
	trn.logradouro,
	trn.numero,
	uf.nome as uf,
	uf.sigla
from
	transportadora trn
left outer join
	municipio on municipio.idmunicipio = trn.idmunicipio
left outer join
	uf on uf.iduf = municipio.iduf;

select * from transportadora_infos;

create view pedidos_info as
select
	pdd.data_pedido,
	pdd.valor,
	trn.nome as transportadora,
	cln.nome as cliente,
	vdd.nome as vendedor
from 
	pedido pdd
left outer join
	transportadora trn on trn.idtransportadora = pdd.idtransportadora
left outer join
	cliente cln on cln.idcliente = pdd.idcliente
left outer join
	vendedor vdd on vdd.idvendedor = pdd.idvendedor;

select * from pedidos_info;

create view pdd_produto as
select
	prd.nome as produto,
	pdp.quantidade,
	pdp.valor_unitario
from
	pedido_produto pdp
left outer join
	produto prd on prd.idproduto = pdp.idproduto;

select * from pdd_produto;

--Campos Autoincremento
create table exemplo (
	idexemplo serial not null,
	nome varchar(50) not null,

	constraint pk_exemplo_idexemplo primary key (idexemplo)
);

insert into exemplo (nome) values ('Exemplo 1');
insert into exemplo (nome) values ('Exemplo 2');
insert into exemplo (nome) values ('Exemplo 3');
insert into exemplo (nome) values ('Exemplo 4');
insert into exemplo (nome) values ('Exemplo 5');

select * from exemplo;

create sequence bairro_id_seq minvalue 5;
alter table bairro alter idbairro set default nextval('bairro_id_seq');
alter sequence bairro_id_seq owned by bairro.idbairro;
insert into bairro (nome) values ('Teste 1');
insert into bairro (nome) values ('Teste 2');
select * from bairro;

select max(idcliente) from cliente;
create sequence clienteo_id_seq minvalue 18;
alter table cliente alter idcliente set default nextval('clienteo_id_seq');
alter sequence clienteo_id_seq owned by cliente.idcliente;

select max(idcomplemento) from complemento;
create sequence complemento_id_seq minvalue 3;
alter table complemento alter idcomplemento set default nextval('complemento_id_seq');
alter sequence complemento_id_seq owned by complemento.idcomplemento;

select max(idfornecedor) from fornecedor;
create sequence fornecedor_id_seq minvalue 4;
alter table fornecedor alter idfornecedor set default nextval('fornecedor_id_seq');
alter sequence fornecedor_id_seq owned by fornecedor.idfornecedor;

select max(idmunicipio) from municipio;
create sequence municipio_id_seq minvalue 10;
alter table municipio alter idmunicipio set default nextval('municipio_id_seq');
alter sequence municipio_id_seq owned by municipio.idmunicipio;

select max(idnacionalidade) from nacionalidade;
create sequence nacionalidade_id_seq minvalue 5;
alter table nacionalidade alter idnacionalidade set default nextval('nacionalidade_id_seq');
alter sequence nacionalidade_id_seq owned by nacionalidade.idnacionalidade;

select max(idpedido) from pedido;
create sequence pedido_id_seq minvalue 16;
alter table pedido alter idpedido set default nextval('pedido_id_seq');
alter sequence pedido_id_seq owned by pedido.idpedido;

select max(idprofissao) from profissao;
create sequence profissao_id_seq minvalue 6;
alter table profissao alter idprofissao set default nextval('profissao_id_seq');
alter sequence profissao_id_seq owned by profissao.idprofissao;

select max(idtransportadora) from transportadora;
create sequence transportadora_id_seq minvalue 3;
alter table transportadora alter idtransportadora set default nextval('transportadora_id_seq');
alter sequence transportadora_id_seq owned by transportadora.idtransportadora;

select max(iduf) from uf;
create sequence uf_id_seq minvalue 7;
alter table uf alter iduf set default nextval('uf_id_seq');
alter sequence uf_id_seq owned by uf.iduf;

select max(idvendedor) from vendedor;
create sequence vendedor_id_seq minvalue 9;
alter table vendedor alter idvendedor set default nextval('vendedor_id_seq');
alter sequence vendedor_id_seq owned by vendedor.idvendedor;

--Campos Default
alter table pedido alter column data_pedido set default current_date;
alter table pedido alter column valor set default 0;
insert into pedido (idcliente, idvendedor) values (1, 1);
select * from pedido;

--Exercícios
alter table produto alter column valor set default 0;
select * from produto;

alter table pedido_produto alter column quantidade set default 1;
alter table pedido_produto alter column valor_unitario set default 0;

--Índices (tornam a pesquisa mais rápida, devem ser colocados nas colunas mais usadas para pesquisas, pois deixam o banco mais pesado)
create index idx_cln_nome on cliente (nome);

--Exercícios aula 61
create index idx_pdd_data_pedido on pedido (data_pedido);
create index idx_prd_nome on produto (nome);
