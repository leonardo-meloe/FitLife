--Create
INSERT INTO aluno (nome, data_nasc, cpf, fk_id_unidade)
VALUES ('Roberto Alencar', '1995-08-22', '99988877711', 1);

--Read
SELECT * FROM aluno 
WHERE cpf = '99988877711';

--Update
UPDATE aluno 
SET nome = 'Roberto Alencar Neto'
WHERE cpf = '99988877711';

--Delete
DELETE FROM aluno 
WHERE cpf = '99988877711';