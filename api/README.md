# Django REST com PostgreSQL

## Pré-requisitos
- postgresql
- virtualenv

### Linux

```shell
sudo apt-get update
sudo apt-get install python-pip python-dev libpq-dev postgresql postgresql-contrib
```

### MacOS

```shell
brew install postgresql
brew services start postgresql
```

## Criando o Banco de Dados

Após a instalação o PostgreSQL realiza a criação de um usuário `postgres`, ele carrega por padrão todas as responsabilidades administrativas.

Iniciaremos acessando este usuário através de:
```shell
sudo su - postgres
```

Então poderemos acessa o terminal interativo do Postgres para realização de PostgreSQL queries através de:
```shell
psql
```

Agora nós devemos realizar a criação de um banco de dados para o nosso projeto dentro do terminal interativo do PostgreSQL.
```shell
CREATE DATABASE myproject;
CREATE USER myuser WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE myproject TO myuser;
ALTER USER myuser CREATEDB;
```

Enfim podemos sair da sessão atual do postgres utilizando:
```shell
\q
```

## Executando o Projeto

Criaremos um ambiente virtualizado para a execução do projeto `Django` utilizando o pacote `virtualenv`, dentro da pasta raíz do projeto deveremos executar os seguintes comandos.

```shell
sudo pip3 install virtualenv
virtualenv env
source env/bin/activate
```

Agora estamos dentro de um ambiente isolado para a instalação dos pacotes necessários para o projeto.

```shell
pip3 install django djangorestframework psycopg2 django-cors-headers
```

Após a instalação dos pacotes devemos entrar na pasta onde se encontra o arquivo `manage.py`, a pasta raíz do projeto da API.

Realize as migrações do banco com o comando:

```shell
python3 manage.py migrate
```

Para a execução do projeto devemos utilizar o seguinte comando:

```shell
python3 manage.py runserver
```

## Rodando os Testes

Para rodar os testes do projeto execute o comando:

```shell
python manage.py test
``` 

## Arquivos de Configuração

A configuração do banco de dados pode ser encontrada no arquivo `api/api/settings.py` na seção `DATABASES`.
