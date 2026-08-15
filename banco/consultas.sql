-- retorna todos os livros
select * from livros;

-- retorna todos os usuarios
select * from usuarios;

-- retorna livros e seus autores
select
livros.titulo as titulo,
autores.nome as autor
from livros
inner join autores
on livros.id_autor = autores.id_autor;

-- retorna quantidade delivro por autor
select
autores.nome as autor,
count(livros.id_autor) as autor
from livros
inner join autores
on livros.id_autor = autores.id_autor
group by livros.id_autor;

-- retorna autores com >= 2 livros
select
autores.nome as autor,
count(livros.id_autor) as autor
from livros
inner join autores
on livros.id_autor = autores.id_autor
group by livros.id_autor
having count(livros.id_autor) >= 2;

-- retorna só usuarios que fizeram emprestimos e a quantidade
select
usuarios.nome as nome,
count(emprestimos.id_usuario) as quantidade
from usuarios
inner join emprestimos
on usuarios.id_usuario = emprestimos.id_usuario
group by emprestimos.id_usuario
having count(emprestimos.id_usuario) >= 1;

-- retorna usuario que mais fez emprestimo
select
usuarios.nome as nome,
count(emprestimos.id_usuario) as quantidade
from usuarios
inner join emprestimos
on usuarios.id_usuario = emprestimos.id_usuario
group by emprestimos.id_usuario
order by count(emprestimos.id_usuario) desc
limit 1;

-- retorna a informação completa
select
usuarios.nome as nome,
livros.titulo as titulo,
autores.nome as autor,
emprestimos.data_emprestimo as data_emprestimo,
emprestimos.data_devolucao as data_devolução
from emprestimos
inner join usuarios
on emprestimos.id_usuario = usuarios.id_usuario
inner join livros
on emprestimos.id_livro = livros.id_livro
inner join autores
on livros.id_autor = autores.id_autor
order by usuarios.nome asc;

-- retorna quantos emprestimos cada livro possui
select 
livros.titulo as titulo,
count(emprestimos.id_livro) as quantidade_emprestada
from livros
inner join emprestimos
on livros.id_livro = emprestimos.id_livro
group by emprestimos.id_livro;