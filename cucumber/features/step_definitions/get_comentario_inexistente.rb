Quando(/^eu bater nesse endpoint com um id inexistente \(\/id\)$/) do
  @response_id_inexistente = HTTParty.get('http://jsonplaceholder.typicode.com/comments/vaicurintia')
end

Então(/^irá me retornar o erro Not Found (\d+)$/) do |arg1|
  puts @response_id_inexistente.message
  case @response_id_inexistente.code
    when 200
      puts "É disso que eu to falando!!!"
    when 404
      puts "Deu ruim, vulgo Not Found."
    when 500...600
      puts "Xiiii #{response.code}"
  end
end
