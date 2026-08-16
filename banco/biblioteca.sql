create table autores(
id_autor int auto_increment primary key,
nome text not null,
nacionalidade text not null
);

create table livros(
id_livro int auto_increment primary key,
titulo text not null,
id_autor int not null,

foreign key (id_autor) references autores(id_autor)
);

create table usuarios(
id_usuario int auto_increment primary key,
nome text not null,
idade text not null,
curso text not null
);

create table emprestimos(
id_emprestimo int auto_increment primary key,
id_usuario int not null,
id_livro int not null,
data_emprestimo text not null,
data_devolucao text not null,

foreign key (id_livro) references livros(id_livro),
foreign key (id_usuario) references usuarios(id_usuario)
);

insert into autores(nome,nacionalidade) values ("Machado de Assis","Brasileira");
insert into autores(nome,nacionalidade) values ("Agatha Christie","Britânica");
insert into autores(nome,nacionalidade) values ("Gabriel García Márquez","Colombiana");
insert into autores(nome,nacionalidade) values ("Stephen King","Americana");
insert into autores(nome,nacionalidade) values ("Clarice Lispector","Brasileira");

insert into livros(titulo,id_autor) values ("Dom Casmurro",'1');
insert into livros(titulo,id_autor) values ("Memórias Póstumas de Brás Cubas",'1');
insert into livros(titulo,id_autor) values ("Quincas Borba",'1');
insert into livros(titulo,id_autor) values ("O Assassinato no Expresso do Oriente",'2');
insert into livros(titulo,id_autor) values ("Morte no Nilo",'2');
insert into livros(titulo,id_autor) values ("E Não Sobrou Nenhum",'2');
insert into livros(titulo,id_autor) values ("Cem Anos de Solidão",'3');
insert into livros(titulo,id_autor) values ("O Amor nos Tempos do Cólera",'3');
insert into livros(titulo,id_autor) values ("Crônica de uma Morte Anunciada",'3');
insert into livros(titulo,id_autor) values ("O Iluminado",'4');
insert into livros(titulo,id_autor) values ("It: A Coisa",'4');
insert into livros(titulo,id_autor) values ("Misery: Louca Obsessão",'4');
insert into livros(titulo,id_autor) values ("A Hora da Estrela",'5');
insert into livros(titulo,id_autor) values ("Perto do Coração Selvagem",'5');
insert into livros(titulo,id_autor) values ("Laços de Família",'5');

insert into usuarios(nome,idade,curso) values ("Lucas Silva",'20',"ADS");
insert into usuarios(nome,idade,curso) values ("Mariana Santos",'22',"SI");
insert into usuarios(nome,idade,curso) values ("Carlos Oliveira",'25',"Gestao");
insert into usuarios(nome,idade,curso) values ("Ana Costa",'19',"ADS");
insert into usuarios(nome,idade,curso) values ("Beatriz Souza",'21',"SI");
insert into usuarios(nome,idade,curso) values ("Rodrigo Lima",'23',"Gestao");
insert into usuarios(nome,idade,curso) values ("Gabriel Almeida",'26',"ADS");
insert into usuarios(nome,idade,curso) values ("Amanda Ribeiro",'20',"SI");
insert into usuarios(nome,idade,curso) values ("Juliana Pereira",'24',"Gestao");
insert into usuarios(nome,idade,curso) values ("Felipe Rodrigues",'18',"ADS");

insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("1","3","2026-02-01","2026-02-15");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("2","1","2026-02-01","2026-02-15");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("3","7","2026-02-02","2026-02-16");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("4","10","2026-02-03","2026-02-17");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("5","13","2026-02-04","2026-02-18");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("6","4","2026-02-05","2026-02-19");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("7","14","2026-02-06","2026-02-20");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("8","2","2026-02-07","2026-02-21");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("9","11","2026-02-08","2026-02-22");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("10","8","2026-02-09","2026-02-23");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("1","5","2026-02-10","2026-02-24");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("3","12","2026-02-11","2026-02-25");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("5","6","2026-02-12","2026-02-26");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("2","15","2026-02-13","2026-02-27");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("4","9","2026-02-14","2026-02-28");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("7","3","2026-02-15","2026-03-01");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("6","1","2026-02-16","2026-03-02");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("8","10","2026-02-18","2026-03-04");
insert into emprestimos(id_usuario,id_livro,data_emprestimo,data_devolucao) values ("10","13","2026-02-19","2026-03-05");