SELECT u.nome AS "Nome da Filial", u.bairro AS "Bairro", g.nome AS "Gerente Responsável"
FROM unidade u
INNER JOIN gerente g ON u.fk_cpf = g.cpf
WHERE u.bairro = 'Jardins'
ORDER BY u.nome ASC;

SELECT a.nome AS "Nome do Aluno", u.nome AS "Filial de Treino"
FROM aluno a
INNER JOIN unidade u ON a.fk_id_unidade = u.id_unidade
WHERE a.fk_id_unidade = 1
ORDER BY a.nome ASC;

SELECT a.nome AS "Aluno", arm.numero_armario AS "Número do Armário", arm.estado_conservacao AS "Estado"
FROM aluno a
INNER JOIN armario arm ON a.id_matricula = arm.fk_matricula
WHERE arm.estado_conservacao = 'Regular'
ORDER BY arm.numero_armario ASC;

SELECT g.nome AS "Gerente", g.salario AS "Salário (R$)", tg.telefone AS "Telefone de Contato"
FROM gerente g
INNER JOIN telefone_gerente tg ON g.cpf = tg.fk_cpf
WHERE g.salario > 5000.00
ORDER BY g.salario DESC;

SELECT i.nome AS "Instrutor", i.cref AS "Registro CREF", ti.telefone AS "Telefone"
FROM instrutores i
INNER JOIN telefone_instrutor ti ON i.cref = ti.fk_cref
WHERE i.cref = 'CREF-000801G/SP'
ORDER BY i.nome ASC;

SELECT a.nome AS "Aluno Jovem", a.data_nasc AS "Data de Nascimento", u.nome AS "Unidade"
FROM aluno a
INNER JOIN unidade u ON a.fk_id_unidade = u.id_unidade
WHERE a.data_nasc >= '1990-01-01'
ORDER BY a.data_nasc ASC;

SELECT u.nome AS "Nome da Filial", u.ruas AS "Endereço", g.nome AS "Gerente"
FROM unidade u
INNER JOIN gerente g ON u.fk_cpf = g.cpf
WHERE u.ruas LIKE 'Av.%'
ORDER BY u.nome ASC;

SELECT t.fk_id_unidade AS "ID da Unidade", i.nome AS "Instrutor Escalado"
FROM trabalha t
INNER JOIN instrutores i ON t.fk_cref = i.cref
WHERE t.fk_id_unidade = 2
ORDER BY i.nome ASC;

SELECT a.nome AS "Nome do Aluno", arm.numero_armario AS "Armário Premium"
FROM aluno a
INNER JOIN armario arm ON a.id_matricula = arm.fk_matricula
WHERE arm.estado_conservacao = 'Excelente'
ORDER BY a.nome ASC;

SELECT g.nome AS "Gerente", g.salario AS "Salário", tg.telefone AS "Telefone"
FROM gerente g
INNER JOIN telefone_gerente tg ON g.cpf = tg.fk_cpf
WHERE g.salario BETWEEN 4000.00 AND 6000.00
ORDER BY g.salario DESC;