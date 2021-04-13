# Trabalho Individual 2020.2


A Gestão de Configuração de Software é parte fundamental no curso de GCES, e dominar os conhecimentos de configuração de ambiente, containerização, virtualização, integração e deploy contínuo tem se tornado cada vez mais necessário para ingressar no mercado de trabalho.

Para exercitar estes conhecimentos, você deverá aplicar os conceitos estudados ao longo da disciplina no produto de software contido neste repositório.

O sistema se trata de uma aplicação Web, cuja funcionalidade consiste numa lista de tarefas, que é composta de:
- Front-end escrito em Javascript, utilizando os frameworks Vue.JS e Quasar;
- Back-end escrito em Django REST;
- Banco de Dados PostgreSQL;

Para executar a aplicação na sua máquina, basta seguir o passo-a-passo descrito nos READMEs das pastas [api](./api/README.md) e [client](./client/README.md).


## Critérios de avaliação

### 1. Containerização

A aplicação deverá ter seu ambiente completamente containerizado. Desta forma, cada subsistema (Front-end, Back-end e Banco de Dados) deverá ser isolado em um container individual.

Deverá ser utilizado um orquestrador para gerenciar comunicação entre os containers, o uso de credenciais, networks, volumes, entre outras configurações necessárias para a correta execução da aplicação.

Para realizar esta parte do trabalho, recomenda-se a utilização das ferramentas:

- Docker versão 17.04.0+
- Docker Compose com sintaxe na versão 3.2+

### 2. Integração contínua

Você deverá criar um 'Fork' deste repositório, onde será desenvolvida sua solução. Nele, cada commit submetido deverá passar por um sistema de integração contínua, realizando os seguintes estágios:

- Build: Construção completa do ambiente;
- Testes: Os testes automatizados da aplicação devem ser executados;
- Coleta de métricas: Deverá ser realizada a integração com algum serviço externo de coleta de métricas de qualidade;

O sistema de integração contínua deve exibir as informações de cada pipeline, e impedir que trechos de código que não passem corretamente por todo o processo sejam adicionados à 'branch default' do repositório.

Para esta parte do trabalho, poderá ser utilizada qualquer tecnologia ou ferramenta que o aluno desejar, como GitlabCI, TravisCI, CircleCI, Jenkins, CodeClimate, entre outras.

### 3. Deploy contínuo

Também deve ser feito a configuração de uma pipeline de modo a publicar a aplicação automaticamente, sempre que um novo trecho de código seja integrado à branch default.

Assim como na Integração Contiinua, poderá ser utilizado qualquer servidor de cloud que o aluno desejar, como DigitalOcean, Heroku, AWS, entre outros.

### 4. Kubernets (extra)

Caso cumpra todos os requisitos descritos acima, será atribuída uma pontuação extra para o aluno que configure o deploy com Kubernets.

