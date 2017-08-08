def read()
  file = File.open('productos.txt','r')
  content = file.readlines
  file.close
  lines = content.map { |e| e.delete(",\n")}
  return lines
end

# cantidad de productos con opciones de submenu
def cant_productos(opcion)
  lines = read()

  if opcion == "a"
    lines.each do |x|
      arr = x.split(" ")
      existencia = arr[3].to_i + arr[2].to_i + arr[1].to_i
      puts "#{arr[0]} hay #{existencia} productos"
    end
  elsif opcion == "b"
    tienda1 = 0
    tienda2 = 0
    tienda3 = 0
    lines.each do |x|
      arr = x.split(" ")
      tienda1 += arr[1].to_i
      tienda2 += arr[2].to_i
      tienda3 += arr[3].to_i
    end
    puts "tienda 1 hay un total de #{tienda1} productos\ntienda 2 hay un total de #{tienda2} productos\ntienda 3 hay un total de #{tienda3} productos\n"
  elsif opcion == "c"
    total = 0
    lines.each do |x|
      arr = x.split(" ")
      total += (arr[1].to_i + arr[2].to_i + arr[3].to_i)
    end
    puts "en total hay #{total} productos en todas las tiendas"
  end
end

#existencia de un producto recibiendo como parametro el nombre del producto
def exist_producto(nom)
  lines = read()
  total = 0
  lines.each do |x|
    arr = x.split(" ")
    if arr[0] == nom
      total += (arr[1].to_i + arr[2].to_i + arr[3].to_i)
    end
  end
  puts "del #{nom} hay #{total} existencias"
end

# mostrar productos no registrados por bodega
def no_registrado()
  lines = read()
  lines.each do |x|
    arr = x.split(" ")
    arr.each_with_index do |item, index|
      if item == "NR"
        if index == 1
          puts "el #{arr[0]} en la bodega 1"
        elsif index == 2
          puts "el #{arr[0]} en la bodega 2"
        elsif index == 3
          puts "el #{arr[0]} en la bodega 3"
        end
      end
    end
  end
end

# mostrar existencia menor total al valor ingresado
def menor_total(num)
  lines = read()
  lines.each do |x|
    arr = x.split(" ")
    existencia = arr[3].to_i + arr[2].to_i + arr[1].to_i
    if existencia < num
      puts "el #{arr[0]} tiene #{existencia} existencia"
    end
  end
end

# ingresar un nuevo producto con su stock por bodega
def ingresar_producto(nuevo)
  file = File.open('productos.txt','a')
  file.puts nuevo
  file.close
end
