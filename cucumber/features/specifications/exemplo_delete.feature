#language: pt

Funcionalidade: Utilização do verbo DELETE

Cenario: Deletar um comentário passando um id existente

  Dado que eu acesse o endpoint /comment/id
  Quando eu passar um id existente no verbo DELETE
  Então o comentário será deletado com sucesso

Cenario: Deletar um comentário passando um id inexistente

  Dado que eu acesse o endpoint /comment/id
  Quando eu passar um id inexistente no verbo DELETE
  Então deverá retornar 404 (Not Found)
