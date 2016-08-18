#language: pt

Funcionalidade: Utilização do verbo POST

Cenario: Criar um novo comentário passando os parametros necessários

  Dado que eu acesse o endpoint /comments
  Quando eu passar os parametros necessários com o verbo POST
  Então o comentário será criado com sucesso
