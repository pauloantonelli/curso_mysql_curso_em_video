/*contando as distincoes das ocorrencias e agrupamento de dados de tipos iquais*/
select carga from cursos group by carga;
/*contando as distincoes das ocorrencias e agrupamento de dados de tipos iquais, e exibindo uma contagem do numero de cada ocorrencia separado*/
select carga, count(nome) from cursos group by carga;
/*agrupamento com condicional*/
select carga, count(*) from cursos group by carga having count(*) > '3' order by count(*);
/*agrupamento com condicional baseada no parametro do group´by:*/
select carga, count(*) from cursos group by carga having carga > '30';
/*agrupamento condicional mostrando a carga baseado no filtro do campo totaulas aonde o agrupamento é feito e separado pelo ano */
select carga, count(*) from cursos where totaulas > '30' group by ano having ano > '2013' order by count(*) desc;
/*mostrando a carga (contando tambem) dos cursos filtrando por ano, agrupando as cargas diferentes aonde so sera agrupado e so sera MOSTRADO as cargas maiores que as cargas medias*/
select carga, count(*) from cursos where ano > '2015' group by carga having carga > (select avg(carga) from cursos);