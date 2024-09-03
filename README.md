# Projeto de exemplo para `SUPABASE`

### Fontes
Para pesquisas mais aprofundadas:

* [Supabase](https://supabase.com/)
* [Client libs](https://supabase.com/docs/guides/api/rest/client-libs)
* [JS lib](https://supabase.com/docs/reference/javascript/start)

## Aplicação funcionando

[Cadastro de Alunos e Tarefas](https://rfdouro.github.io/demofrontsupabase/)

## Dados de teste

* Usuário:
  * teste@teste.com
* Senha:
  * 1234

Esse usuário apenas faz leitura e alterações. Existem **regras** (*policies*) no serviço `SUPABASE` implementadas que dão autorização apenas para um outro usuário fazer a inserção ou exclusão dos dados.


# Para usuários avançados usando API REST

* Para efetuar o login veja a [documentação](https://supabase.com/docs/reference/self-hosting-auth/refreshes-a-users-refresh-token)
  * POST
  * https://<PROJETO>.supabase.co/auth/v1/token?grant_type=password
  * Body:
    * {"email": <email>, "password": <password>}
    * Exemplo de autenticação
    * ![efetuando login](postman_login.png)
* Consulte a documentação de [REST](https://supabase.com/docs/guides/api)
  * Para fazer acesso pelo endpoint 
    * https://<PROJETO>.supabase.co/rest/v1/<TABELA>?
    * Exemplo de inserção de dados (observe que tem Bearer enviando o token obtido com a autenticação)
    * ![inserindo dados](inserindo_dados.png)
    * Exemplo de seleção de dados
    * ![recuperando dados](recuperando_dados.png)