/*pega qualquer nome que comece com ph e que tenha p e termine com quaquer coisa ou coisa nenhuma*/
select * from cursos where nome like 'ph%p_';

select * from gafanhotos where nome like '%silva%';

select * from gafanhotos where nome like '%_silva';

select * from gafanhotos where nome like '%_silva';
/*retorna o result set "resumindo" as nacionalidades em 1 só*/
select distinct nascionalidade from gafanhotos order by nascionalidade;
/*retorna o result set so com os valores repetidos resumidos em 1*/
select distinct carga from cursos order by carga;
/*conta todos os registros e retorna o valor*/
select count(*) from cursos;
/*conta todos os registros de curso com carga acima das 40 horas e retorna o valor*/
select count(*) from cursos where carga > '40';
/*retorna o maior numero de aulas de um curso que tenha o ano de 2016*/
select max(totaulas) from cursos where ano = '2016';
/**/
select min(carga) from cursos; 
/**/
select nome, min(totaulas) from cursos where ano = '2016';
/**/
select sum(totaulas) from cursos where ano = '2016';
/**/
select sum(totaulas) from cursos;
/**/
select avg(totaulas) from cursos where ano = '2016';