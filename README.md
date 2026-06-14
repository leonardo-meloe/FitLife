# 🏋️‍♂️ Projeto de Banco de Dados: Academias FitLife

## 📝 Cenário
"A FitLife é uma rede de academias que utiliza um sistema integrado para gerenciar suas operações. Na base da infraestrutura estão as Unidades, onde cada filial possui um código exclusivo, um Nome Fantasia e um Endereço detalhado, obrigatoriamente dividido em Rua, Número, Bairro e CEP. Para funcionar, a empresa contém uma regra rígida de administração: cada unidade possui exatamente um gerente responsável, e cada gerente administra apenas uma única unidade por vez. Do gerente, o sistema armazena o CPF, Nome, Telefone e o Salário. 

Para o conforto dos clientes, as filiais oferecem Armários numerados para locação, identificados por um número de Tombamento único e pelo seu Estado de Conservação. A regra de uso garante que cada armário pertence exclusivamente a um único Aluno, e cada aluno só pode alugar um armário por vez. Os Alunos, por sua vez, recebem uma Matrícula própria ao se cadastrarem. São armazenados seu Nome, CPF e Data de Nascimento, dado que o sistema usa para calcular automaticamente a Idade atual do aluno. Contratualmente, um aluno vincula-se a apenas uma unidade sede, mas uma unidade possui muitos alunos cadastrados. 

Por fim, o suporte aos treinos é feito pelos Instrutores, identificados pelo registro profissional CREF e pelo Nome. O sistema permite salvar múltiplos Telefones para o mesmo instrutor, facilitando o contato. Como a rede adota um modelo de escala flexível, um instrutor pode dar aulas em várias unidades da rede, assim como uma única unidade conta com o trabalho de múltiplos instrutores." 

## 📐 Modelagem Conceitual
<img width="841" height="701" alt="modelo_conceitual drawio" src="https://github.com/user-attachments/assets/ede53ca0-7d6f-4eea-b79f-6e11d54623ab" />


## 📊 Modelagem Lógica
<img width="1101" height="512" alt="modelo_logico drawio (1)" src="https://github.com/user-attachments/assets/7ff632d8-48a9-4515-8a4a-f7efe4e35933" />


## 💻 Modelagem Física
Os scripts de criação das tabelas encontram-se arquivados no arquivo `estrutura.sql`. A carga contendo 55 registros realistas populando o ecossistema está localizada em `dados.sql`.

<img width="821" height="723" alt="Captura de tela 2026-06-14 182804" src="https://github.com/user-attachments/assets/4666b365-d80c-45db-9dd3-737c5266ce5a" />


## 🔄 CRUD
As operações elementares de manipulação de dados foram testadas com sucesso através de inserções individuais, consultas, atualizações de cadastros e deleções no arquivo `crud.sql`.
<img width="762" height="732" alt="Captura de tela 2026-06-14 183542" src="https://github.com/user-attachments/assets/b9777026-9356-45c0-88ce-7bb8e13f3158" />
<img width="713" height="696" alt="Captura de tela 2026-06-14 183604" src="https://github.com/user-attachments/assets/9b227561-8bd9-463a-be6c-873333c11c46" />
<img width="620" height="757" alt="Captura de tela 2026-06-14 183623" src="https://github.com/user-attachments/assets/b33a9947-0efe-4a68-9347-8c1cf91b222c" />
<img width="518" height="422" alt="Captura de tela 2026-06-14 183642" src="https://github.com/user-attachments/assets/288cf179-4764-41f2-9d19-dc693d2c25de" />



## 📈 Relatórios
Foram desenvolvidas 10 consultas corporativas avançadas utilizando técnicas de Junção de Tabelas (`JOIN`), restrições complexas por filtros (`WHERE`) e formatação ordenada de dados (`ORDER BY`) mapeadas no arquivo `relatorios.sql`.

<img width="802" height="928" alt="Captura de tela 2026-06-14 184920" src="https://github.com/user-attachments/assets/2b634013-2809-47ef-94dd-f105f056d510" />
<img width="606" height="865" alt="Captura de tela 2026-06-14 185037" src="https://github.com/user-attachments/assets/9ff767ff-0f0d-412a-abaf-da175cf5ccac" />
<img width="518" height="823" alt="Captura de tela 2026-06-14 185320" src="https://github.com/user-attachments/assets/4949a0f9-4d33-4712-9f24-5ee3c00f2f87" />
<img width="462" height="820" alt="Captura de tela 2026-06-14 185522" src="https://github.com/user-attachments/assets/130277e9-6d84-4b8d-b454-965d2abd945d" />
<img width="635" height="812" alt="Captura de tela 2026-06-14 185809" src="https://github.com/user-attachments/assets/03752455-c0b6-4709-97f9-74fa02892c47" />
<img width="632" height="843" alt="Captura de tela 2026-06-14 190004" src="https://github.com/user-attachments/assets/305c4217-9929-4747-9f0a-8466bc1a5b03" />
<img width="592" height="530" alt="Captura de tela 2026-06-14 190050" src="https://github.com/user-attachments/assets/a0c3843b-7c60-4ac2-8c5f-6fe7966b972e" />
<img width="597" height="846" alt="Captura de tela 2026-06-14 190251" src="https://github.com/user-attachments/assets/e397e088-a1d6-459b-9ad9-23b4d07bd163" />
<img width="638" height="867" alt="Captura de tela 2026-06-14 190349" src="https://github.com/user-attachments/assets/53956aff-9b9b-416b-a0ce-4bb4d2e1b402" />
<img width="865" height="833" alt="Captura de tela 2026-06-14 191204" src="https://github.com/user-attachments/assets/5b40c8cf-cecc-4f3d-8492-32472e6c177d" />
