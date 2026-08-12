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
 
 