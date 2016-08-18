Dado(/^que eu acesse o endpoint \/comment\/id$/) do
  @response = HTTParty.get('http://jsonplaceholder.typicode.com/comments/100')
  puts @response.body
end

Quando(/^eu passar um id existente no verbo DELETE$/) do
  @deletebody = {
    "id": 100
  }.to_json

  puts @deletebody

  @delete = HTTParty.delete("http://jsonplaceholder.typicode.com/comments/100",
    :body => @deletebody,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^o comentário será deletado com sucesso$/) do
  puts @delete.message
end
