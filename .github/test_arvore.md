# Exercício - Árvore da Educação

Contexto: Precisamos fazer um sistema de correção de provas, temos os seguinte domínio para o teste:
 
## Tipos de usuários:

* Professor (identificado pelo CPF)
* Aluno (identificado por um código interno)

## Eventos que acontecem:

* Usuário master cadastrou uma nova escola e vinculou um professor
* Professor cadastrou uma turma
* Professor cadastrou um aluno
* Professor criou modelo de prova (as questões podem ser múltipla escolha ou discursiva)
* Professor aplicou prova para uma turma
* Professor disponibilizou a prova para ser compartilhada por outros professores da mesma escola
* Professor editou modelo de prova pré-existente antes da aplicação
* Professor criou nova versão de prova com base em uma outra
* Aluno respondeu a prova
* Professor corrigiu prova do aluno.
* Professor colocou comentário em uma prova corrigida.
* Professor adicionou nota individual em cada questão.
* Sistema corrigiu automaticamente as questões alternativas.

 
Fluxos:

* Cadastrar uma nova escola. (admin interno)
* Cadastrar um professor (admin interno ou outro professor da escola)
* Cadastrar uma turma e aluno (professor)
* Aplicar uma atividade (professor)
* Compartilhar uma atividade (professor)
* Responder uma atividade (aluno)
* Corrigir uma atividade (professor)

 
 
## Com base nessas especificações:
 
### Parte 1 - Arquitetura
 
* Desenhe as tabelas necessárias para o funcionamento correto, incluindo seus campos. Não utilize Jsonb, faça as relações por FK e join tables. Pode ser um arquivo de schema, coloque no git o link ou a imagem do schema e nos envie.
 
### Parte 2 – Mão na massa
 
* Crie um projeto em Elixir utilizando a Framework Phoenix utilizando as boas práticas e acople GraphQL para as consultas.
 
* Elabore um endpoint GraphQL que consulte quais alunos pertencem a uma determinada turma. O ID da turma é recebido como parâmetro. 
 
 
### Considerações: 
* Agrupe os módulos em contextos/namespaces de forma que essa associação seja algo que faça lógica no mundo real (por exemplo Shipping, Billing, etc.). OS contextos deveM ter uma interface pública única e esse deve ser o único canal de comunicação com o resto do sistema. 
* Pode detalhar em um documento os motivos de determinadas tomadas de decisão na arquitetura.
*Pode criar o código em um repositório GIT e compartilhar com a gente.