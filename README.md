# Test Feliphe Pozzer

## Dependências

Para rodar este projeto você precisa ter:

* Ruby 2.4.2 - Você pode usar [RVM](http://rvm.io)
* [PostgreSQL](http://www.postgresql.org/)
  * OSX - [Postgress.app](http://postgresapp.com/)
  * Linux - `$ sudo apt-get install postgresql`
  * Windows - [PostgreSQL for Windows](http://www.postgresql.org/download/windows/)

## Setup do projeto

1. Instalar as dependências a baixo:
2. `$ git clone git@github.com:pozzer/teste_ruby.git` - Clone o projeto
3. `$ cd teste_ruby` - Entre na pasta do projeto
4. `$ rake db:create e rake db:migration` - Crie o banco
5. `$ export API_TOKEN="sua_chave"` - Crie seu token, pode usar o $ rake secret para gerar o token
6. `$ rspec spec/` - Executar as specs para ver se está tudo funcionando como deveria

Se tudo estiver certo, você pode agora rodar o projeto!

## Rodando o projeto
1. `$ rails c` - Abra o console
2. `Transaction.create_by_file(File.join(Rails.root, 'lib','resources','CNAB.txt'))` - Crie as transações via arquivo CNABs, e feche o console
4. `$ rails s` - Executa o servidor do rails
5. Abra [http://localhost:3000](http://localhost:3000)

#### Rodando os testes

`$ rspec spec/` para rodar as specs.
