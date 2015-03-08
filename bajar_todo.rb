letras = ('A'..'Z').to_a << 'Ñ'

letras.each do |letra|
  system "curl http://www.sitiosargentina.com.ar/Nombres/masculinos/#{ letra }.htm |
          parse_list.rb > #{ letra }"
end
