# Sistema de Biblioteca

## 📝 Descrição
Este projeto consiste em um sistema de banco de dados relacional para gerenciamento de uma biblioteca acadêmica. Ele permite o controle completo de autores, acervo de livros, cadastro de usuários universitários e o histórico de empréstimos realizados de forma integrada.

## 🛠️ Tecnologias
* **SQL** (Linguagem de Consulta Estruturada)
* **MySQL / MariaDB** (Sistema Gerenciador de Banco de Dados)

## 🗄️ Banco de Dados

### Estrutura das Tabelas (DDL)
```sql
CREATE TABLE autores(
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL,
    nacionalidade TEXT NOT NULL
);

CREATE TABLE livros(
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo TEXT NOT NULL,
    id_autor INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

CREATE TABLE usuarios(
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL,
    idade TEXT NOT NULL,
    curso TEXT NOT NULL
);

CREATE TABLE emprestimos(
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo TEXT NOT NULL,
    data_devolucao TEXT NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);
```

### População do Banco (DML)
O banco já vem pré-populado com:
* **5** Autores renomados
* **15** Livros clássicos da literatura nacional e internacional
* **10** Usuários de cursos como ADS, SI e Gestão
* **19** Registros de empréstimos para testes de relatórios

## ⚙️ Funcionalidades
* Cadastro de escritores com controle de nacionalidade.
* Vinculação estrita de livros a autores existentes.
* Categorização de usuários por curso e faixa etária.
* Registro de empréstimos com datas de retirada e devolução.
* Rastreamento completo de movimentação do acervo.

## 📊 Consultas SQL (Relatórios)

### 1. Listar todos os livros
```sql
SELECT * FROM livros;
```

### 2. Listar todos os usuários
```sql
SELECT * FROM usuarios;
```

### 3. Listar livros e seus respectivos autores
```sql
SELECT
    livros.titulo AS titulo,
    autores.nome AS autor
FROM livros
INNER JOIN autores ON livros.id_autor = autores.id_autor;
```

### 4. Quantidade de livros cadastrados por autor
```sql
SELECT
    autores.nome AS autor,
    COUNT(livros.id_autor) AS quantidade_livros
FROM livros
INNER JOIN autores ON livros.id_autor = autores.id_autor
GROUP BY livros.id_autor;
```

### 5. Filtrar autores com 2 ou mais livros no acervo
```sql
SELECT
    autores.nome AS autor,
    COUNT(livros.id_autor) AS quantidade_livros
FROM livros
INNER JOIN autores ON livros.id_autor = autores.id_autor
GROUP BY livros.id_autor
HAVING COUNT(livros.id_autor) >= 2;
```

### 6. Listar usuários que já fizeram empréstimos e a quantidade total
```sql
SELECT
    usuarios.nome AS nome,
    COUNT(emprestimos.id_usuario) AS quantidade
FROM usuarios
INNER JOIN emprestimos ON usuarios.id_usuario = emprestimos.id_usuario
GROUP BY emprestimos.id_usuario
HAVING COUNT(emprestimos.id_usuario) >= 1;
```

### 7. Identificar o usuário que mais realizou empréstimos
```sql
SELECT
    usuarios.nome AS nome,
    COUNT(emprestimos.id_usuario) AS quantidade
FROM usuarios
INNER JOIN emprestimos ON usuarios.id_usuario = emprestimos.id_usuario
GROUP BY emprestimos.id_usuario
ORDER BY COUNT(emprestimos.id_usuario) DESC
LIMIT 1;
```

### 8. Relatório completo de empréstimos (Auditoria)
```sql
SELECT
    usuarios.nome AS nome,
    livros.titulo AS titulo,
    autores.nome AS autor,
    emprestimos.data_emprestimo AS data_emprestimo,
    emprestimos.data_devolucao AS data_devolucao
FROM emprestimos
INNER JOIN usuarios ON emprestimos.id_usuario = usuarios.id_usuario
INNER JOIN livros ON emprestimos.id_livro = livros.id_livro
INNER JOIN autores ON livros.id_autor = autores.id_autor
ORDER BY usuarios.nome ASC;
```

### 9. Quantidade de vezes que cada livro foi emprestado
```sql
SELECT 
    livros.titulo AS titulo,
    COUNT(emprestimos.id_livro) AS quantidade_emprestada
FROM livros
INNER JOIN emprestimos ON livros.id_livro = emprestimos.id_livro
GROUP BY emprestimos.id_livro;
```

## 🚀 Como executar

1. Instale um gerenciador de banco de dados (ex: MySQL Workbench, DBeaver ou phpMyAdmin).
2. Crie um novo banco de dados em seu servidor:
   ```sql
   CREATE DATABASE sistema_biblioteca;
   USE sistema_biblioteca;
   ```
3. Copie o código da seção **Estrutura das Tabelas** e execute-o para criar o esquema.
4. Execute os comandos de inserção (`INSERT INTO`) fornecidos no arquivo de dados para popular o banco.
5. Rode qualquer uma das **Consultas SQL** listadas acima para gerar os relatórios em tempo real.

## ✒️ Autor
* **Iury Nicolau** - [Meu GitHub](https://github.com/IuryNi)