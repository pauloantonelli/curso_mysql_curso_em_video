/*AULA 04*/
/*Comando do tipo DDL - database definition language*/
create database cadastro
default character set utf8
default collate utf8_general_ci;/*cria o banco de dados com utf8 como padrao para caracteres e para todo o resto do banco*/

use cadastro;/*entra no banco cadastro*/

create table pessoas (
	id int not null auto_increment,/*esse campo vai ser o que irá gerar a chave primaria de cada usuario automaticamente seguindo em sequencia numerica*/
    nome varchar(30) not null,/*not null é uma constrain e faz esse campo não aceitar nulo(vazio) como nome ou seja o campo é obrigatório*/
    nascimento date,
    sexo enum('M','F'),/*esse constraint fará o campo do registro só aceitar m ou f*/
    peso decimal(5,2),/*o 5 quer dizer que das 5 casas decimais as 2 ultimas serão separadas por virgula assim mantem a coerencia de como o dado tem que ser recebido e tambem economiza espaco em disco*/
    altura decimal(3,2),/*o 3 quer dizer que das 3 casas decimais as 2 ultimas serão separadas por virgula, isso por que a altura maxima de alguem é de 2 mts e alguma coisa, entao pegamos um digito separado por 2 digitos, assim economizamos espaco em disco*/
    nascionalidade varchar(20) default 'Brasil',/*se nada for inputado o valor padrao sera brasil*/
    primary key (id)/*esse campo é a referencia da chave aonde outros campos iram se conectar a ela para saber qual usuario escolher*/
)default charset = utf8;

/*AULA 05*/
/*comando do tipo DML - data manipulate language*/
/*insercao na tabela sintaxe completa*/
insert into pessoas(id, nome, nascimento, sexo, peso, altura, nascionalidade)
values(default,'Godofredo','1984-01-02','M','78.5','1.83','Brasil');

/*insercao na tabela sintaxe simplificada sem o id auto_increment*/
insert into pessoas(nome, nascimento, sexo, peso, altura, nascionalidade)
values('Guanabara','1980-10-05','M','80.5','2.03','Africa');

/*insercao na tabela sintaxe abreviada, pois os dados estao na ordem exata dos campos dos registros*/
insert into pessoas value(default,'Paulo','1987-11-02','M','70','1.73','default');

/*multi insercoes na tabela*/
insert into pessoas value(DEFAULT, 'Cláudio','1975-4-22','M','99','2.15','Itália'),
(DEFAULT, 'Pedro','1999-14-2','M','76','2',default),
(DEFAULT, 'Janaina','1975-11-12','F','75.4','1.66','eua');

/*mostra todos os campos da tabela*/
select * from pessoas;

/*AULA 06*/
/*mostra os campos da tabela*/
 describe pessoas;
 /*versao resumida do comando describe*/
 desc pessoas;
 /*altera a tabela com uma nova coluna chamada profissao*/
 alter table pessoas
 add column profissao varchar(10);
 /*deleta a coluna apontada da tabela*/
 alter table pessoas
 drop column profissao;
 /*adiciona nova coluna profissao na tabela na posicao apos a coluna nome*/
 alter table pessoas
 add column profissao varchar(10) after nome;
 /*adiciona uma nova coluna na primeira posicao da tabela, a palavra column é opcional e funciona sem ela*/
 alter table pessoas
 add codigo int first;
 /*modifica o atributo escolhido da coluna apontada*/
 alter table pessoas
 modify column profissao varchar(20);
 /*altera a coluna iqual o comando passado, mas adiciona duas contrains, a nao permite nulo, e o padrao para vazio para evitar conflito com o padrao do banco de tudo ser nulo*/
 alter table pessoas
 modify column profissao varchar(25) not null default ' ';
 /*troca o nome da coluna profissao por prof e readiciona os constrains antigos para mante-los*/
 alter table pessoas
 change column profissao prof varchar(20) not null default ' ';
 /*modifica o nome da tabela para um novo nome*/
 alter table pessoas
 rename to gafanhotos;