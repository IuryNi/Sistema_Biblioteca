# 📚 Sistema de Banco de Dados para Biblioteca

Este repositório armazena o projeto de banco de dados relacional para gerenciamento de uma biblioteca. O projeto foi desenvolvido com fins estritamente acadêmicos, servindo como ambiente prático para o treinamento e consolidação de conceitos essenciais do ecossistema **MySQL**.

---

## 🎯 Conceitos Aprendidos e Praticados

O desenvolvimento deste script permitiu a aplicação prática de diversas regras fundamentais de engenharia de dados:

* **Ciclo de Dependência de Tabelas (DDL):** Compreensão da ordem lógica de criação de tabelas. Tabelas que possuem dependências de chaves estrangeiras (tabelas filhas) só podem ser geradas após a existência de suas tabelas de origem (tabelas pai).
* **Integridade Referencial:** Aplicação de restrições através de `FOREIGN KEY` para garantir que empréstimos e livros apontem apenas para registros válidos e existentes de alunos e autores.
* **Resolução de Relacionamentos Muitos-para-Muitos (N:M):** Modelagem de uma tabela associativa (`emprestimos`) para conectar as entidades `alunos` e `livros`, permitindo o histórico completo de transações.
* **Junções Avançadas de Dados (DQL):** Criação de consultas com múltiplos `INNER JOIN` simultâneos, unificando até quatro tabelas distintas em um único relatório legível.
* **Ordenação e Agrupamento:** Uso de comandos de ordenação (`ORDER BY`) e agrupamento de dados (`GROUP BY`) combinados com funções agregadoras para a geração de relatórios de métricas.
* **Manipulação Segura do Banco:** Diagnóstico e resolução do **Erro 3730 (ER_FK_CANNOT_DROP_PARENT)** através do controle temporário de checagem de chaves (`FOREIGN_KEY_CHECKS`).

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

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o **MySQL Server** instalado e rodando em sua máquina.
2. Utilize uma ferramenta cliente de sua preferência (MySQL Workbench, DBeaver, phpMyAdmin ou terminal).
3. Abra e execute o arquivo de script SQL presente neste repositório para criar a estrutura, povoar os dados de teste e rodar os relatórios analíticos demonstrativos.

---

## ✒️ Autor

* **Iury Nicolau** - *Estudante de Analise e Dedenvolvimento de Sistemas* - [Meu Github](https://github.com/IuryNi)

