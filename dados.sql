DO $$
DECLARE 
    i INT;
    var_cpf CHAR(11);
    var_aluno_cpf CHAR(11);
    var_cref VARCHAR(30);
    
    nomes_gerentes TEXT[] := ARRAY[
        'Marcos Aurélio Souza', 'Sandra Mara Fonseca', 'Roberto de Assis', 'Cláudia Regina Malta', 'Ricardo Dias Abreu',
        'Patrícia Medeiros', 'Fernando Henrique Lima', 'Sônia Maria Guimarães', 'Antônio Carlos Reis', 'Márcia Cristina Cruz',
        'Fábio Augusto Ramos', 'Eliane Terezinha Naves', 'Marcelo Vieira Prado', 'Regina Célia Pires', 'Gustavo Franco Dias',
        'Tatiana Lopes Viana', 'Alexandre Borges Góes', 'Simone Aparecida Leal', 'Renato Garcia Bueno', 'Aline Cristina Faria',
        'Daniel de Oliveira Paz', 'Priscila Rocha Neves', 'Eduardo Alves Coelho', 'Letícia Spiller Costa', 'Rodrigo Santoro Melo',
        'Camila Pitanga Novaes', 'Murilo Rosa Antunes', 'Giovanna Antonelli Lima', 'Reynaldo Gianecchini', 'Taís Araújo Silva',
        'Lázaro Ramos Filho', 'Cláudia Raia Barbosa', 'Alexandre Nero Duarte', 'Flávia Alessandra Santos', 'Otaviano Costa Neto',
        'Deborah Secco Peixoto', 'Mateus Solano Brandão', 'Alinne Moraes Fontes', 'Rafael Cardoso Assis', 'Grazi Massafera Rocha',
        'Cauã Reymond Alcântara', 'Paolla Oliveira Junqueira', 'Juliana Paes Meireles', 'Rodrigo Lombardi Porto', 'Bruna Marquezine',
        'Marina Ruy Barbosa', 'Chay Suede Castro', 'Gabriel Leone Teixeira', 'Alice Wegmann Caldeira', 'Humberto Carrão Sales',
        'Isis Valverde Moreira', 'Emílio Dantas Nogueira', 'Deborah Bloch Cunha', 'Vladimir Brichta', 'Adriana Esteves Vianna'
    ];

    nomes_alunos TEXT[] := ARRAY[
        'Lucas Silva', 'Ana Beatriz Souza', 'Matheus Oliveira', 'Thiago Ferreira', 'Gabriel Costa',
        'Beatriz Rodrigues', 'Guilherme Almeida', 'Larissa Nascimento', 'Gustavo Lima', 'Maria Eduarda Araujo',
        'Felipe Carvalho', 'Aline Ribeiro', 'Rodrigo Gomes', 'Camila Martins', 'Thiago Rocha',
        'Isabela Ribeiro', 'Bruno Mendes', 'Letícia Nunes', 'Diego Fernandes', 'Juliana Viana',
        'Rafael Barros', 'Vanessa Correia', 'Leonardo Carvalho', 'Amanda Teixeira', 'Ricardo Castro',
        'Pedro Henrique Ramos', 'Fernanda Priscila Dias', 'Caio Augusto Rocha', 'Mariana Neves', 'Vinícius Aguiar',
        'Sofia Gonçalves', 'Daniel Rezende', 'Caroline Farias', 'Murilo Antunes', 'Júlia Azevedo',
        'Vitor Hugo Barbosa', 'Eduarda Cardoso', 'Samuel Peixoto', 'Nicole Guimarães', 'Arthur Assis',
        'Lara Caldeira', 'Breno Sales', 'Luana Moreira', 'Enzo Gabriel Malta', 'Alice Nogueira',
        'Matheus Cunha', 'Giovanna Porto', 'Erick Meireles', 'Heloísa Fontes', 'Yago Silveira',
        'Bianca Dornelas', 'Otávio Junqueira', 'Clara Brandão', 'Igor Alcântara', 'Manuela Veloso'
    ];

    nomes_instrutores TEXT[] := ARRAY[
        'Carlos Alberto Silva', 'Patricia Pillar Costa', 'Fernando Prass Santos', 'Juliana Paes Oliveira', 'Marcos Mion Souza',
        'Adriana Esteves Lima', 'Rodrigo Faro Rezende', 'Camila Pitanga Farias', 'Thiago Lacerda Ramos', 'Paolla Oliveira Dias',
        'Reynaldo Gianecchini', 'Giovanna Antonelli Melo', 'Murilo Benício Alencar', 'Taís Araújo Neves', 'Lázaro Ramos Neto',
        'Cláudia Raia Barbosa', 'Alexandre Nero Guimarães', 'Flávia Alessandra Porto', 'Otaviano Costa Filho', 'Deborah Secco Antunes',
        'Mateus Solano Peixoto', 'Alinne Moraes Malta', 'Rafael Cardoso Assis', 'Grazi Massafera Rocha', 'Cauã Reymond Brandão',
        'Renato Aragão Mendes', 'Dedé Santana Viana', 'Mussum Mangueira', 'Zacarias Albuquerque', 'Xuxa Meneghel',
        'Angélica Ksyvickis', 'Eliana Michaelichen', 'Fausto Silva', 'Luciano Huck', 'Marcos Mion',
        'Serginho Groisman', 'William Bonner', 'Renata Vasconcellos', 'Glória Pires', 'Tony Ramos',
        'Fernanda Montenegro', 'Lima Duarte', 'Antônio Fagundes', 'Susana Vieira', 'Cauã Reymond',
        'Bruna Marquezine', 'Marina Ruy Barbosa', 'Chay Suede', 'Gabriel Leone', 'Alice Wegmann',
        'Humberto Carrão', 'Isis Valverde', 'Paolla Oliveira', 'Juliana Paes', 'Rodrigo Lombardi'
    ];
    
    ruas TEXT[] := ARRAY[
        'Av. Paulista', 'Rua das Flores', 'Alameda dos Anjos', 'Av. Central', 'Rua São João',
        'Av. Brigadeiro Luís Antônio', 'Rua Augusta', 'Av. Rebouças', 'Rua dos Pinheiros', 'Av. Pompéia',
        'Rua Domingos de Morais', 'Av. Santo Amaro', 'Rua Voluntários da Pátria', 'Av. Cruzeiro do Sul', 'Alameda Lorena',
        'Av. Ipiranga', 'Rua Vergueiro', 'Av. Dr. Arnaldo', 'Rua Teodoro Sampaio', 'Av. Professor Francisco Morato',
        'Rua Clélia', 'Av. Celso Garcia', 'Rua Oriente', 'Av. Alcântara Machado', 'Alameda Santos'
    ];
    
    bairros TEXT[] := ARRAY[
        'Jardins', 'Bela Vista', 'Vila Mariana', 'Centro', 'Botafogo',
        'Pinheiros', 'Perdizes', 'Santana', 'Moema', 'Itaim Bibi',
        'Consolação', 'Liberdade', 'Cambuci', 'Tatuapé', 'Mooca',
        'República', 'Paraíso', 'Pacaembu', 'Vila Madalena', 'Butantã',
        'Lapa', 'Brás', 'Pari', 'Belenzinho', 'Cerqueira César'
    ];
BEGIN
    FOR i IN 1..55 LOOP
        var_cpf := CAST((42581930000 + (i * 173) + 42) AS CHAR(11));
        INSERT INTO gerente (cpf, nome, salario) VALUES (var_cpf, nomes_gerentes[i], 3400.00 + (i * 60));
        INSERT INTO telefone_gerente (fk_cpf, telefone) VALUES (var_cpf, '(11) 9' || CAST((91000000 + (i * 14532)) AS VARCHAR));
    END LOOP;

    FOR i IN 1..55 LOOP
        var_cpf := CAST((42581930000 + (i * 173) + 42) AS CHAR(11));
        INSERT INTO unidade (nome, ruas, numero, bairro, cep, fk_cpf)
        VALUES ('FitLife Filial ' || i, ruas[(i % 25) + 1], 12 + (i * 14), bairros[(i % 25) + 1], '0' || (3100 + i) || '-' || LPAD((150 + i)::text, 3, '0'), var_cpf);
    END LOOP;

    FOR i IN 1..55 LOOP
        var_aluno_cpf := CAST((31245070000 + (i * 241) + 19) AS CHAR(11));
        INSERT INTO aluno (nome, data_nasc, cpf, fk_id_unidade) VALUES (nomes_alunos[i], '1985-03-20'::DATE + (i * 68), var_aluno_cpf, (i % 55) + 1);
    END LOOP;

    FOR i IN 1..55 LOOP
        INSERT INTO armario (estado_conservacao, numero_armario, fk_matricula) VALUES (CASE WHEN i % 3 = 0 THEN 'Excelente' WHEN i % 3 = 1 THEN 'Bom' ELSE 'Regular' END, 300 + i, i);
    END LOOP;

    FOR i IN 1..55 LOOP
        var_cref := 'CREF-' || LPAD((i + 800)::text, 6, '0') || 'G/SP';
        INSERT INTO instrutores (cref, nome) VALUES (var_cref, nomes_instrutores[i]);
        INSERT INTO telefone_instrutor (fk_cref, telefone) VALUES (var_cref, '(11) 9' || CAST((82000000 + (i * 12345)) AS VARCHAR));
    END LOOP;

    FOR i IN 1..55 LOOP
        var_cref := 'CREF-' || LPAD((i + 800)::text, 6, '0') || 'G/SP';
        INSERT INTO trabalha (fk_cref, fk_id_unidade) VALUES (var_cref, i);
        INSERT INTO trabalha (fk_cref, fk_id_unidade) VALUES (var_cref, (i % 55) + 1);
    END LOOP;
END $$;