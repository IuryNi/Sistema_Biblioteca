-- ============== TABELAS ================
-- tabela livros
create table livros(
 id_livro integer auto_increment primary key,
 id_autor int not null,
 titulo text not null,
 ano integer,

 foreign key (id_autor) references autores(id_autor)
 );
 
-- tabela alunos
create table alunos(
 id_aluno int auto_increment primary key,
 nome text not null,
 idade int not null,
 curso text not null
 );
 
-- tabela autores
create table autores(
id_autor int auto_increment primary key,
nome text not null,
nacionalidade text
);

-- tabela emprestimos
create table emprestimos(
id_emprestimo int auto_increment primary key,
id_aluno int not null,
id_livro int not null,
data_emprestimo text not null,
data_devolucao text,

foreign key (id_aluno) references alunos(id_aluno),
foreign key (id_livro) references livros(id_livro)
);

-- ============== INSERTS ================
-- adiciona a livros 
INSERT INTO livros(titulo,id_autor,ano)
 values('Harry Potter', 4,1997);
 
INSERT INTO livros(titulo,id_autor,ano)
 values('Dom Casmurro', 3,1899);
 
INSERT INTO livros(titulo,id_autor,ano)
 values('1984', 2,1949);
 
 INSERT INTO livros(titulo,id_autor,ano)
 values('O Hobbit', 1,1937);

-- isere a emprestimos
insert into emprestimos(id_aluno,id_livro,data_emprestimo) values
(1,1,'22/06'),
(2,2,'12/09'),
(3,4,'25/01'),
(4,1,'11/04'),
(1,4,'01/03');

-- insere a autores
insert into autores(nome,nacionalidade) values
('J.R.R Tolkien','Britânico'),
('George Orwell','Britânico'),
('Machado de Assis','Brasileiro'),
('J.K. Rowling','Britânica');

-- ============== EXIBICOES ================
-- exibe nome/titulo/dataEmprestimo
select
alunos.nome,
livros.titulo,
emprestimos.data_emprestimo
from emprestimos
inner join alunos
on emprestimos.id_aluno = alunos.id_aluno
inner join livros
on emprestimos.id_livro = livros.id_livro;

-- exibe nome/titulo/dataEmprestimo/dataDevolucao
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

-- exibe aluno/titulo/autor/dataEmprestimo
select
alunos.nome as aluno,
livros.titulo as livro,
autores.nome as autor,
emprestimos.data_emprestimo as dataEmprestimo
from emprestimos
inner join alunos
on emprestimos.id_aluno = alunos.id_aluno
inner join livros
on emprestimos.id_livro = livros.id_livro
inner join autores
on livros.id_autor = autores.id_autor;

-- exibe livros/autores
select
livros.titulo as Titulo,
autores.nome as Autor
from livros
inner join autores
on livros.id_autor = autores.id_autor;

-- exibe quantidade de elementos em livros
select count(*) from livros;

-- exibe a quantidade de livros por autores
select 
autores.nome as autor,
count(*) as quantidade_livros
from autores
group by autores.nome;

-- mesma coisa que a anterior com filtro
SELECT
    autores.nome AS autor,
    COUNT(livros.id_livro) AS quantidade_livros
FROM autores
INNER JOIN livros
    ON autores.id_autor = livros.id_autor
GROUP BY autores.id_autor
HAVING COUNT(livros.id_livro) > 1;

-- exibe o maior valor de ano
select max(ano) from livros;

-- exibe o valor min de ano
select min(ano) from livros;


-- exibe a media das idades
select avg(idade) from alunos;