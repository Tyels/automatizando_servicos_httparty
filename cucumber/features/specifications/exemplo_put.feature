#language: pt

Funcionalidade: Utilização do verbo PUT para alterar um comentário

Cenario: Alterar comentário

  Dado que eu acesse o endpoint /comments/100
  Quando eu passar o id 100 alterando algum campo do comentário com o verbo PUT
  Então deverá alterar com sucesso, trazendo status 200 (OK)
