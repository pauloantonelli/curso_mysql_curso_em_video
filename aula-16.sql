use cadastro;

/*cria-se a tabela que será usada como entidade muitos para as tabelas gafanhotos e cursos que serao entidades 1*/
create table gafanhoto_assiste_curso(
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key(idgafanhoto) references gafanhotos(id),
    foreign key(idcurso) references cursos(idcursos)
)default charset = utf8;

/*insere novos dados na tabela do meio, 1º campo segue o padrao auto_increment do id, 2º dados de data, 3º id aluno, 4º curso assistido, tudo isso seguindo a ordem de criacao da tabela*/
insert into gafanhoto_assiste_curso values
(default,'2015-12-22','03','6'),
(default,'2014-01-01','22','12'),
(default,'2016-05-01','1','19'),
(default,'2017-08-11','20','20');

select * from gafanhoto_assiste_curso;

/*o select vai mostrar o id do aluno, nome do aluno, nome do curso, id aluno tabela do meio, id do curso da tabela do meio tendo como referencia inicial a tabela gafanhotos com o apelido "g"*/
/*une a tabela do meio(dando um apelido para ela "a")*/
/*especificando que a chave primaria da tabela gafanhotos se ligue a chave estrangeira(idgafanhoto) da tabela do meio*/
/*une a tabela cursos(dando um apelido para ela "c"*/
/*especificando que a chave primaria da tabela cursos se ligue a chave estrangeira(idcurso) da tabela do meio*/
/*ordene os resultados pelo nome dos alunos da tabela gafanhotos*/
select g.id, g.nome, c.nome, a.idgafanhoto, a.idcurso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcursos = a.idcurso
order by g.nome;