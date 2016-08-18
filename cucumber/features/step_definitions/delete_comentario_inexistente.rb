Quando(/^eu passar um id inexistente no verbo DELETE$/) do
  @delete_inexistente_body = {
    "id": "esse_id_nao_existe"
  }.to_json

  puts @delete_inexistente_body

  @delete_inexistente = HTTParty.delete("http://jsonplaceholder.typicode.com/comments/esse_id_nao_existe",
    :body => @delete_inexistente_body,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^deverá retornar (\d+) \(Not Found\)$/) do |arg1|
  puts @delete_inexistente.message
  case @delete_inexistente.code
    when 200
      puts "É disso que eu to falando!!!"
    when 404
      puts "Deu ruim, vulgo Not Found."
    when 500...600
      puts "Xiiii #{response.code}"
  end
end
