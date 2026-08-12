create table livros(
 id_livro integer auto_increment primary key,
 titulo text not null,
 autor text not null,
 ano integer
 );
 
create table alunos(
 id_aluno int auto_increment primary key,
 nome text not null,
 idade int not null,
 curso text not null
 );
 
INSERT INTO livros(titulo,autor,ano)
 values('Harry Potter', 'J.K Rowling',1997);
 
INSERT INTO livros(titulo,autor,ano)
 values('Dom Casmurro', 'Machado de Assis',1899);
 
INSERT INTO livros(titulo,autor,ano)
 values('1984', 'George Orwell',1949);
 
 INSERT INTO livros(titulo,autor,ano)
 values('O Hobbit', 'J.R.R. Tolkien',1937);
 
create table emprestimos(
id_emprestimo int auto_increment primary key,
id_aluno int not null,
id_livro int not null,
data_emprestimo text not null,
data_devolucao text,

foreign key (id_aluno) references alunos(id_aluno),
foreign key (id_livro) references livros(id_livro)
);

insert into emprestimos(id_aluno,id_livro,data_emprestimo) values
(1,1,'22/06'),
(2,2,'12/09'),
(3,4,'25/01'),
(4,1,'11/04'),
(1,4,'01/03');

select
alunos.nome,
livros.titulo,
emprestimos.data_emprestimo
from emprestimos
inner join alunos
on emprestimos.id_aluno = alunos.id_aluno
inner join livros
on emprestimos.id_livro = livros.id_livro;

select
alunos.nome,
livros.titulo,
emprestimos.data_emprestimo,
emprestimos.data_devolucao
from emprestimos
inner join alunos
on emprestimos.id_aluno = alunos.id_aluno
inner join livros
on emprestimos.id_livro = livros.id_livro
order by data_emprestimo desc;
