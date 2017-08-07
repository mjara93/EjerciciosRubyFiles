require_relative 'html.rb'
# Crear un método que reciba dos strings, este método
# creará un archivo index.html y pondrá como párrafo
# cada uno de los strings recibidos.

def crear(texto)
  file = File.open('index.html', 'w')
  file.puts head_body()
  file.puts parrafo(texto)
  file.puts final_body()
  file.close
end

texto = ""
for i in 1..2
  puts "ingresar una texto:"
  text = gets.chomp
  texto += text + "\n"
end

crear(texto)

# Crear un método similar al anterior, que además
# pueda recibir un arreglo. Si el arreglo no está vacío,
# agregar debajo de los párrafos una lista ordenada con
# cada uno de los elementos.

def crear_text(texto, arr = nil)
  if arr == nil
    file = File.open('index2.html', 'w')
    file.puts head_body()
    file.puts parrafo(texto)
    file.puts final_body()
    file.close
  else
    file = File.open('index2.html', 'w')
    file.puts head_body()
    file.puts parrafo(texto)
    file.puts "<ol>"
    arr.each do |x|
      file.puts "<li>"+ x +"</li>"
    end
    file.puts "</ol>"
    file.close
  end
end

array = ["hey","hola","bonjour","mushimushi","aloha"]
crear_text(texto, array)

# Crear un tercer método que además pueda recibir un
# color. Agregar color de fondo a los párrafos.
def crear_text_color(texto, arr = nil, color)
  if arr == nil
    file = File.open('index2.html', 'w')
    file.puts head_body()
    file.puts parrafo(texto,color)
    file.puts final_body()
    file.close
  else
    file = File.open('index3.html', 'w')
    file.puts head_body()
    file.puts parrafo(texto,color)
    file.puts "<ol>"
    arr.each do |x|
      file.puts "<li>"+ x +"</li>"
    end
    file.puts "</ol>"
    file.close
  end
end

puts "ingrese un color para el parrafo:"
color = gets.chomp

crear_text_color(texto, array, color)
