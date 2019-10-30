# LoveFridays :hearts:

<p align="center">   
  <img alt ="LoveFridaysLogo" src="https://raw.githubusercontent.com/mgfzemor/lovefridays/master/app/assets/images/logo.png" width=400 height=400>
</p>

Esse repositório é o repositório de exemplo para a aplicação desenvolvida durante o Minicurso Ruby (On Rails) - SEMAC 2019, no [Instituto de Informática](https://inf.ufrgs.br) - [UFRGS](https://ufrgs.br).

A aplicação foi desenvolvida utilizando [Ruby on Rails](https://rubyonrails.org/), buscando demonstrar as features básicas (porém poderosas) disponibilizadas pelo mesmo.

A ideia por trás da aplicação é um fórum colaborativo, onde os alunos podem avaliar seus professores e/ou disciplinas, além de permitir que outros alunos possam visualizar essa informação, possivelmente ajudando os a se basear para a escolha de professores/disciplinas para o próximo semestre letivo.

## Instalação

Para rodarmos essa aplicação é necessária ter as seguintes aplicações instaladas:

- RVM ou RBENV - para instalação e configuração do Ruby (>= 2.6.0) e da ferramenta Gem
- NVM - para instalação e configuração do NodeJS (necessário a partir do Rails 6.0)
- Yarn - para instalação do webpack (necessário a partir do rails 6.0)
- Ruby on Rails - Versão 6.0 ou superior

## Rodando

Para rodar o sistema, primeiro precisamos instalar nossas gems e configurar o banco de dados. Utilizamos os seguintes comandos:
```bash
$ bundle install
$ rake db:migrate && rake db:seed
```

Após isso, basta iniciar nosso servidor com `rails s` e pronto :tada: seu sistema está rodando em `localhost:3000`.

## Autores

O projeto foi desenvolvido por [@mgfzemor](https://github.com/mgfzemor) e [@rafaeelaudibert](https://github.com/rafaeelaudibert).

## Links extras

- [Slides da apresentação](https://docs.google.com/presentation/d/1J2QFwAsA7lybScy6zBojq4i4PCAkR8uOHs3624AlXP4/edit?usp=sharing)
- [Guias do Rails](https://edgeguides.rubyonrails.org/)
