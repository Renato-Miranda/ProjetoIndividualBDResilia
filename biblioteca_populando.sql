INSERT INTO livros (id_livros, titulo, qtd_paginas, editora, genero, autor_id)
VALUES
  (1, 'Antifa o manual antifacista', 391, 'Autonomia Literaria', 'Politica', NULL),
  (2, 'Voce nao merece ser feliz', 160, 'Intrinsica', 'Satira', NULL),
  (3, 'O Hobbit', 290, 'Martins Fontes', 'Fantasia', NULL),
  (4, '1984', 277, 'Editora Nacional', 'Ficcao', NULL),
  (5, 'Modernidade Liquida', 278, 'Zahar', 'politica', NULL);
  
  INSERT INTO autores (id_autor, qtd_livros, pessoa_id) VALUES 
	(1, 4, null),
    (2, 2, null),
    (3, 7, null),
    (4, 4, null),
    (6, 5, null);
    
 INSERT INTO autores_livros (autores_id_autor, livros_autor_id) VALUES 
	(1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);
 
INSERT INTO emprestimos_livros (id_emprestimo, usuario_id, livro_id) VALUES 
(1, null, null),
(2, null, null),
(3, null, null),
(4, null, null),
(5, null, null);

    
INSERT INTO enderecos (id_endereco, logradouro, numero, complemento, cep, bairro, cidade, estado, pais) VALUES
(1, 'Rua Felisbeto Ferreira', 12, 'casa', 83704230, 'Mandatuba', 'Carmopolis', 'MG', 'Brasil'),
(2, 'Avenida Das Flores', 25, 'Apartamento', 12345678, 'Cidade Jardim', 'Belavista', 'SP', 'Brasil'),
(3, 'Rua das Estrelas', 7, 'Sobrado', 45678901, 'Luminária', 'Novo Horizonte', 'RJ', 'Brasil'),
(4, 'Travessa das Araras', 9, 'Casa', 98765432, 'Florestal', 'Serra Azul', 'ES', 'Brasil'),
(5, 'Praça do Sol', 16, 'Bloco B', 54321098, 'Solaris', 'Alvorada', 'RS', 'Brasil');

INSERT INTO funcionarios (id_funcionario, cargo, senha, data_admissao, pessoa_id) VALUES
(1, 'bibliotecario', '12358f', '2010-07-05', null),
(2, 'seguranca', 'aBcDeFg', '2023-03-12', null),
(3, 'professor', 'pass123', '2019-09-22', null),
(4, 'estagiario', 'mypassword', '2022-11-30', null),
(5, 'pesquisador', 'researcher321', '2021-06-18', null);

INSERT INTO pessoas (id_pessoa, nome, email, cpf, telefone, data_nascimento, endereco_id) VALUES
(1, 'Pablito Periquito', 'pablito@uol.com.br', '07765890562', 999836599, '1991-07-20', null),
(2, 'Mariana Silva', 'mariana@gmail.com', '09876543210', 988887776, '1985-12-15', null),
(3, 'Carlos Mendes', 'carlos.mendes@yahoo.com', '12345678901', 977776665, '1990-03-25', null),
(4, 'Isabela Santos', 'isabela.santos@hotmail.com', '99988877766', 966665554, '1988-09-02', null),
(5, 'Rafael Oliveira', 'rafa.oliveira@gmail.com', '87654321098', 955554443, '1983-11-30', null),
(6, 'Juliana Pereira', 'ju.pereira@gmail.com', '55544433322', 944443332, '1995-06-10', null),
(7, 'Fernando Costa', 'fer.costa@yahoo.com', '11122233344', 933332221, '1977-05-28', null),
(8, 'Laura Almeida', 'laura.almeida@hotmail.com', '44433322211', 922221110, '1992-02-18', null),
(9, 'Gustavo Souza', 'gustavo.souza@gmail.com', '33322211100', 911110000, '1989-08-12', null),
(10, 'Ana Rodrigues', 'ana.rodrigues@yahoo.com', '22211100099', 900000099, '1981-04-07', null),
(11, 'Pedro Sampaio', 'pedro.sampaio@gmail.com', '99988877766', 988877665, '1997-10-05', null),
(12, 'Camila Ferreira', 'camila.ferreira@hotmail.com', '88877766655', 977766554, '1984-07-14', null),
(13, 'Lucas Oliveira', 'lucas.oliveira@yahoo.com', '77766655544', 966655443, '1993-01-23', null),
(14, 'Mariano Costa', 'mariano.costa@gmail.com', '66655544433', 955544332, '1986-09-08', null),
(15, 'Gabriela Silva', 'gabi.silva@yahoo.com', '55544433322', 944433221, '1994-05-16', null),
(16, 'Diego Pereira', 'diego.pereira@hotmail.com', '44433322211', 933322110, '1980-02-26', null),
(17, 'Luana Almeida', 'luana.almeida@gmail.com', '33322211100', 922221100, '1987-08-31', null),
(18, 'Ricardo Souza', 'ricardo.souza@yahoo.com', '22211100099', 911110009, '1996-04-09', null),
(19, 'Bianca Rodrigues', 'bianca.rodrigues@gmail.com', '11100099988', 900009997, '1982-11-29', null),
(20, 'Marina Sampaio', 'marina.sampaio@hotmail.com', '00099988877', 988776665, '1998-10-02', null);

INSERT INTO pessoas_autores (pessoas_id_pessoa, autores_pessoa_id) VALUES 
	(1,1),
    (2,2),
    (3,3),
    (4,4),
    (5,5);
    
 INSERT INTO usuarios (id_usuario, senha, pessoa_id) VALUES 
	(1, 'flavindopneu12', null),
	(2, 'carlos123', null),
	(3, 'andreia_87', null),
	(4, 'maria1985', null),
	(5, 'joaopires22', null),
	(6, 'anacarol_99', null),
	(7, 'alex1234', null),
	(8, 'pedrosoares', null),
	(9, 'lauramendes', null),
	(10, 'ricardopereira', null),
	(11, 'juliasilva_', null),
	(12, 'fernandogomes', null),
	(13, 'gabriel99', null),
	(14, 'rosa1987', null),
	(15, 'samuel_silveira', null);








    
    
    
    
		