Quando(/^eu passar os parametros necessários com o verbo POST$/) do
  @createbody = {
    "postId": 501,
    "id": 501,
    "name": Faker::StarWars.character,
    "email": Faker::Internet.email,
    "body": Faker::ChuckNorris.fact
  }.to_json
  @create = HTTParty.post("http://jsonplaceholder.typicode.com/comments",
    :body => @createbody,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^o comentário será criado com sucesso$/) do
  puts @create.to_json, @create.message
end
