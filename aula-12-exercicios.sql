use cadastro;
/*1º uma lista com o nome de todas as gafanhotas*/
select nome from gafanhotos where sexo = 'F' order by nome asc;
/*2º uma lista com os dados de todos aqueles que nasceram entre 01/jan/2000 e 31/dez/2015*/
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31' order by nascimento desc;
/*3º uma lista de todos os homens que trabalham como programadores*/
select nome, profissao from gafanhotos where profissao = 'programador' order by nome asc;
/*4º uma lista com os dados de todas as mulheres que nasceram no Brasil e que tem seu nome iniciando com a letra J*/
select * from gafanhotos where sexo = 'F' and nascionalidade = 'Brasil' and nome like 'J%' order by nome asc;
/*5º uma lista com o nome e a nacionalidade de todos os homens que tem Silva no nome, e que não nasceram no Brasil e pesam menos de 100kg*/
select nome, nascionalidade from gafanhotos where sexo = 'M' and nome like '%Silva%' and nascionalidade not like 'Brasil' and peso < '100';
/*6º qual a maior altura entre homens gafanhotos que moram no Brasil?*/
select max(altura) from gafanhotos where sexo = 'M' and nascionalidade = 'Brasil';
/*7º qual é a media de peso dos gafanhotos cadastrados?*/
select avg(peso) from gafanhotos;
/*8º qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil entre 01/jan/1990 e 31/dez/2000?*/
select min(peso) from gafanhotos where sexo = 'F' and nascionalidade not like 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
/*9º quantas gafanhotas tem mais de 1.90m de altura?*/
select count(nome) from gafanhotos where altura > '1.90';