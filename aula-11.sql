/*apresenta os dados dos resultados da tabela em ordem crescente*/
select * from cursos
order by nome asc;
/*apresenta os dados dos resultados da tabela em ordem decrescente*/
select * from cursos
order by nome desc;
/*mostra os campos nome, carga, ano ordenado(ascendente) pelo nome*/
select nome, carga, ano from cursos order by nome;
/*mostra os campos nome, carga, ano ordenado(ascendente) pelo ano*/
select nome, carga, ano from cursos order by ano;
/*mostra os campos escolhidos ordenados 1º pelo ano 2º pelo nome do curso*/
select nome, carga, ano from cursos order by ano, nome;
/*mostra os campos escolhidos baseado no parametro de pesquisa 2016 (que nao aparece por que nao foi chamado no result set) e ordenado ascendente pelo nome*/
select nome, carga from cursos where ano = '2016' order by nome;
/*o result set conterá os cursos que tem o ano menor ou iqual a 2016*/
select nome, carga, totaulas from cursos where ano <= '2016';
/*o result set sera o que estiver na faixa de valores do ano entre 2016 e 2018, ordenado pelo campo totaulas em ordem decrescente*/
select nome, carga, totaulas, ano from cursos where ano between '2016' and '2018' order by totaulas desc;
/*o result set sera o que estiver nos anos do in() e será ordenado pelo ano em ordem ascendente*/
select nome, carga, totaulas, ano from cursos where ano in('2015','2017','2018') order by ano asc;
/*o result set sera o que estiver dentro das condicoes do where*/
select nome, carga, totaulas, ano from cursos where carga < 35 or totaulas > 30;
/*o result set sera o que estiver dentro das condicoes do where*/
select nome, carga, totaulas, ano from cursos where carga < 35 and ano > 2016;