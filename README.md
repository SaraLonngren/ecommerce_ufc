# Ecommerce UFC

Projeto para a cadeira de Programação Web 01
Alunos: Antônio Cláudio e Sara Longreen

### Instalação
Ecommerce UFC requer [Ruby](https://gorails.com/setup/ubuntu/18.04) v2.6.2 [Rails](https://gorails.com/setup/ubuntu/18.04) v5.2.2 e [Postgres](https://gorails.com/setup/ubuntu/18.04) v9.0+
Instale as dependências e rode os seguintes comandos:
```sh
  $ bundle
  $ rails db:create db:migrate
  $ rails s
```
A partir daí a aplicação estará disponível em `localhost:3000`
Rotas:
 * `/` - Rotas de usuário, após o login o usuário poderá listar os produtos
 * `/admin` - Rotas de funcionário, após o login o usuário poderá listar categorias e produtos, bem como editá-los e destruí-los
