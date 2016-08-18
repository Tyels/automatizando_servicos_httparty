#language: pt

Funcionalidade: Busca comentários

Cenario: Utilizndo GET para busca de comentários

	Dado que eu acesse o endpoint /comments
  Quando eu bater no endpoint com um id do comentario
  Então irá me trazer o corpo da request com status de sucesso

Cenario: Utilizando GET para busca de comentários inexistentes

	Dado que eu acesse o endpoint /comments
	Quando eu bater nesse endpoint com um id inexistente (/id)
	Então irá me retornar o erro Not Found 404
