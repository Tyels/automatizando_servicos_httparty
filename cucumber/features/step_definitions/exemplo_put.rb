Dado(/^que eu acesse o endpoint \/comments\/(\d+)$/) do |arg1|
  @response_id = HTTParty.get('http://jsonplaceholder.typicode.com/comments/100')
  puts @response_id.body
end

Quando(/^eu passar o id (\d+) alterando algum campo do comentário com o verbo PUT$/) do |arg1|
  @altera_comentario_body = {
    "id": 100,
    "email": "email_alterado@yahoo.com.br"
  }.to_json

  puts @altera_comentario_body

  @alterar_comentario = HTTParty.put("http://jsonplaceholder.typicode.com/comments/100",
    :body => @altera_comentario_body,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^deverá alterar com sucesso, trazendo status (\d+) \(OK\)$/) do |arg1|
  puts @alterar_comentario.message
  case @response_id.code
    when 200
      puts "É disso que eu to falando!!!"
    when 404
      puts "Deu ruim, vulgo Not Found."
    when 500...600
      puts "Xiiii #{response.code}"
  end
end
