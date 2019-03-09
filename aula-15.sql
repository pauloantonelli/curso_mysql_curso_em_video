use cadastro;

describe gafanhotos;
describe cursos;
select * from gafanhotos;
select * from cursos;

/*criar uma novo campo chamado curso preferido do tipo inteiro na tabela gafanhotos*/
alter table gafanhotos add column cursopreferido int;

/*especifica que o campo curso preferido será uma chave estrangeira com referencia dessa chave na tabela cursos no campo de chave primaria idcursos*/
alter table gafanhotos add foreign key(cursopreferido) references cursos(idcursos);

/*preenche no aluno 1 com o codigo do curso preferido desse aluno*/
update gafanhotos set cursopreferido = '6' where id ='1';

/*mostra no result set os campos nome aluno, curso preferido aluno, nome curso(referenciado no codigo numerico do curso), ano do curso(referenciado pelo codigo numerico do curso)*/
/*tabela de referencia inicial alunos, junta com a tabela cursos*/
/*aonde o codigo do curso preferido dos alunos se juntam com o codigo da tabela de referencia dos cursos*/
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on gafanhotos.cursopreferido = cursos.idcursos;

/*mostra no result set os campos nome aluno, curso preferido aluno, nome curso(referenciado no codigo numerico do curso), ano do curso(referenciado pelo codigo numerico do curso)*/
/*tabela de referencia inicial alunos, junta com a tabela cursos, aonde tambem atraves da palavra "as" as tabelas adquirem apelidos para simplificar a sintaxe*/
/*aonde o codigo do curso preferido dos alunos se juntam com o codigo da tabela de referencia dos cursos*/
/*ordenado por nome*/
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcursos = g.cursopreferido
order by g.nome;

/*mostra no result set os campos nome aluno, curso preferido aluno, nome curso(referenciado no codigo numerico do curso), ano do curso(referenciado pelo codigo numerico do curso)*/
/*tabela de referencia inicial alunos, junta com a tabela cursos dando prioridade no result set para a tabela a esquerda no comando, aonde tambem atraves da palavra "as" as tabelas adquirem apelidos para simplificar a sintaxe*/
/*aonde o codigo do curso preferido dos alunos se juntam com o codigo da tabela de referencia dos cursos*/
/*ordenado por nome*/
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on g.cursopreferido = c.idcursos
order by g.nome;

/*mostra no result set os campos nome aluno, curso preferido aluno, nome curso(referenciado no codigo numerico do curso), ano do curso(referenciado pelo codigo numerico do curso)*/
/*tabela de referencia inicial alunos, junta com a tabela cursos dando prioridade no result set para a tabela a direita no comando, aonde tambem atraves da palavra "as" as tabelas adquirem apelidos para simplificar a sintaxe*/
/*aonde o codigo do curso preferido dos alunos se juntam com o codigo da tabela de referencia dos cursos*/
/*ordenado por nome*/
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on g.cursopreferido = c.idcursos
order by c.nome;