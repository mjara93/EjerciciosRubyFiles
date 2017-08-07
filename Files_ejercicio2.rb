def contador()
  file = File.open('peliculas.txt','r')
  content = file.readlines
  file.close

  return content.count
end

cantidad = contador()

puts cantidad
