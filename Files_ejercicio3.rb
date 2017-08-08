# Crear un método que reciba el archivo peliculas.txt, lo abra y cuente
# la cantidad total de palabras. El método debe devolver este valor.

def contador_palabra()
  file = File.open('peliculas.txt','r')
  content = file.readlines
  file.close

  contador  = 0
  content.each do |x|
    arr = x.split(" ")
    contador += arr.count
  end
return contador
end

a = contador_palabra
puts a

# Crear un método similar para que además reciba - como argumento- un string. # En este caso el método debe contar únicamente las apariciones de ese string en el archivo.

def existe?(nom)
  file = File.open('peliculas.txt','r')
  content = file.readlines
  file.close

  contador  = 0
  content.each do |x|
    arr = x.split(" ")
    arr.each do |y|
      if y == nom
        contador += 1
      end
    end
  end
return contador
end

puts "ingresar una palabra:"
text = gets.chomp
a = existe?(text)
puts "#{a} veces la palabra #{text}"
