CREATE DATABASE biblioteca_renato;
USE biblioteca_renato;

CREATE TABLE `pessoas` (
  `id_pessoa` integer PRIMARY KEY,
  `nome` varchar(40),
  `email` varchar(40),
  `cpf` varchar(11),
  `telefone` integer,
  `data_nascimento` date,
  `endereco_id` integer
);

CREATE TABLE `enderecos` (
  `id_endereco` integer PRIMARY KEY,
  `logradouro` varchar(40),
  `numero` varchar(15),
  `complemento` varchar(15),
  `cep` integer,
  `bairro` varchar(20),
  `cidade` varchar(30),
  `estado` varchar(2),
  `pais` varchar(20)
);

CREATE TABLE `funcionarios` (
  `id_funcionario` integer PRIMARY KEY,
  `cargo` varchar(25),
  `senha` varchar(20),
  `data_admissao` datetime,
  `pessoa_id` integer
);

CREATE TABLE `usuarios` (
  `id_usuario` integer PRIMARY KEY,
  `senha` varchar(20),
  `pessoa_id` integer
);

CREATE TABLE `autores` (
  `id_autor` integer PRIMARY KEY,
  `qtd_livros` integer,
  `pessoa_id` integer
);

CREATE TABLE `livros` (
  `id_livros` integer PRIMARY KEY,
  `titulo` varchar(40),
  `qtd_paginas` integer,
  `editora` varchar(30),
  `genero` varchar(30),
  `autor_id` integer
);

CREATE TABLE `emprestimos_livros` (
  `id_emprestimo` integer PRIMARY KEY,
  `usuario_id` integer,
  `livro_id` integer
);

ALTER TABLE `pessoas` ADD FOREIGN KEY (`endereco_id`) REFERENCES `enderecos` (`id_endereco`);

ALTER TABLE `funcionarios` ADD FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas` (`id_pessoa`);

ALTER TABLE `usuarios` ADD FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas` (`id_pessoa`);

CREATE TABLE `pessoas_autores` (
  `pessoas_id_pessoa` integer,
  `autores_pessoa_id` integer,
  PRIMARY KEY (`pessoas_id_pessoa`, `autores_pessoa_id`)
);

ALTER TABLE `pessoas_autores` ADD FOREIGN KEY (`pessoas_id_pessoa`) REFERENCES `pessoas` (`id_pessoa`);

ALTER TABLE `pessoas_autores` ADD FOREIGN KEY (`autores_pessoa_id`) REFERENCES `autores` (`pessoa_id`);


CREATE TABLE `autores_livros` (
  `autores_id_autor` integer,
  `livros_autor_id` integer,
  PRIMARY KEY (`autores_id_autor`, `livros_autor_id`)
);

ALTER TABLE `autores_livros` ADD FOREIGN KEY (`autores_id_autor`) REFERENCES `autores` (`id_autor`);

ALTER TABLE `autores_livros` ADD FOREIGN KEY (`livros_autor_id`) REFERENCES `livros` (`id_livros`);


ALTER TABLE `emprestimos_livros` ADD FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id_usuario`);

ALTER TABLE `emprestimos_livros` ADD FOREIGN KEY (`livro_id`) REFERENCES `livros` (`id_livros`);
