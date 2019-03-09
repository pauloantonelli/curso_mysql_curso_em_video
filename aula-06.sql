/*cria nova tabela se nao existir outra com mesmo nome */
create table if not exists cursos(
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2016'
)default charset = utf8;
/*adiciona um campo com uma id especifica no topo da tabela que sera usada como referencia da chave primaria*/
alter table cursos
add column idcurso int first;
/*adiciona uma chave primaria que esta ligada a id criada acima*/
alter table cursos
add primary key(idcurso);