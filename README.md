# 📚 Sistema de Banco de Dados para Biblioteca

Este repositório armazena o projeto de banco de dados relacional para gerenciamento de uma biblioteca. O projeto foi desenvolvido com fins estritamente acadêmicos, servindo como ambiente prático para o treinamento e consolidação de conceitos essenciais do ecossistema **MySQL**.

---

## 🎯 Conceitos Aprendidos e Praticados

O desenvolvimento deste script permitiu a aplicação prática de diversas regras fundamentais de engenharia de dados:

* **Ciclo de Dependência de Tabelas (DDL):** Compreensão da ordem lógica de criação de tabelas. Tabelas que possuem dependências de chaves estrangeiras (tabelas filhas) só podem ser geradas após a existência de suas tabelas de origem (tabelas pai).
* **Integridade Referencial:** Aplicação de restrições através de `FOREIGN KEY` para garantir que empréstimos e livros apontem apenas para registros válidos e existentes de alunos e autores.
* **Resolução de Relacionamentos Muitos-para-Muitos (N:M):** Modelagem de uma tabela associativa (`emprestimos`) para conectar as entidades `alunos` e `livros`, permitindo o histórico completo de transações.
* **Junções Avançadas de Dados (DQL):** Criação de consultas com múltiplos `INNER JOIN` simultâneos, unificando até quatro tabelas distintas (`alunos`, `livros`, `autores` e `emprestimos`) em um único relatório legível.
* **Funções de Agregação e Métricas:** Implementação de funções nativas para análise de dados estatísticos, como contagens (`COUNT`), médias (`AVG`), além de valores máximos (`MAX`) e mínimos (`MIN`).
* **Agrupamento e Filtragem Avançada:** Uso de comandos de agrupamento (`GROUP BY`) combinados com filtros pós-agregação (`HAVING`) para segmentar relatórios de forma inteligente.

---

## 🏗️ Estrutura e Arquitetura do Banco

O banco de dados é composto por 4 tabelas centrais que interagem de forma relacional:

1. **`autores`** (Tabela Pai)
   * Armazena o cadastro básico e a nacionalidade dos escritores.
2. **`livros`** (Tabela Filha de `autores`)
   * Contém as obras literárias e possui dependência direta da tabela de autores.
3. **`alunos`** (Tabela Pai)
   * Armazena os dados dos estudantes habilitados a realizar retiradas, como curso e idade.
4. **`emprestimos`** (Tabela Associativa / Filha de `alunos` e `livros`)
   * Entidade central do sistema que registra qual aluno pegou qual livro, além de armazenar o controle de datas de retirada e devolução.

---

## 📊 Consultas Práticas Praticadas (DQL)

O script inclui relatórios prontos para execução que cobrem diferentes cenários de negócios:

* **Histórico de Empréstimos:** Cruzamento de dados para exibir quem pegou qual livro, incluindo datas de retirada, devolução e ordenação cronológica decrescente.
* **Relação Livro x Autor:** Relatório simplificado mapeando os títulos literários diretamente aos seus respectivos criadores.
* **Painel Estatístico do Acervo:**
  * Contagem total de livros catalogados.
  * Quantidade de livros publicados por cada autor.
  * Filtragem de autores que possuem mais de um livro cadastrado (`HAVING COUNT > 1`).
  * Identificação do livro mais recente (`MAX`) e do mais antigo (`MIN`) com base no ano de publicação.
* **Métricas do Usuário:** Cálculo da média de idade (`AVG`) dos alunos cadastrados na base.

---

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o **MySQL Server** instalado e rodando em sua máquina.
2. Utilize uma ferramenta cliente de sua preferência (MySQL Workbench, DBeaver, phpMyAdmin ou terminal).
3. Abra e execute o arquivo de script SQL presente neste repositório para criar a estrutura, povoar os dados de teste e rodar os relatórios analíticos demonstrativos.

---

## ✒️ Autor

* **Iury Nicolau** - *Estudante de Análise e Desenvolvimento de Sistemas* - [Seu GitHub](https://github.com)


