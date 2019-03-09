use cadastro;
/*1ª - uma lista com as profissoes dos gafanhotos e seus respectivos quantitativos ex: quantos sao programadores, quantos sao analistas, quantos sao professores...*/
select profissao, count(*) from gafanhotos group by profissao order by profissao asc;
/*2ª - quantos gafanhotos homens e quantos gafanhotos mulheres nasceram após 01-01-2005? ex: 1º quantos nasceram depois de 2005, 2º agrupalos por sexo para ver quantos homens e quantas mulheres atenderam o parametro proposto*/
select sexo, sum(sexo) from gafanhotos where nascimento > '2005-01-01' group by sexo order by sexo asc;
/*3ª - uma lista com os gafanhotos que nasceram fora do brasil, mostrando o pais de origem e o total de pessoas nascidas lá. Só nos interessam os paises que tiverem mais de 3 gafanhotos com com a mesma nascionalidade*/
select nascionalidade, count(nascionalidade) from gafanhotos where nascionalidade not like 'Brasil' group by nascionalidade having count(nascionalidade) >= '3' order by nascionalidade;
/*4ª - uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estao acima da média de altura de todos os cadastrados*/
select altura, peso, count(peso) from gafanhotos where peso >= '100' group by altura having altura > (select avg(altura) from gafanhotos);