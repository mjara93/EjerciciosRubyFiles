require_relative 'productos.rb'

puts "Elige una opcion:\n 1)Conocer cantidad de productos.\n 2)Cantidad de producto segun producto ingresado.\n 3)Mostrar productos no registrados\n 4)Productos con una existencia menor a valor ingresado.\n 5)Registrar un nuevo producto.\n 6)Salir del programa."
opcion = gets.chomp.to_i
while opcion != 6
  if opcion==1||opcion==2||opcion==3||opcion==4||opcion==5
    if opcion == 1
      puts "Elija una opcion:\n a)Mostrar la existencia por productos.\n b)Mostrar la existencia total por tienda.\n c)Mostrar la existencia total en todas las tiendas.\n d)Volver al menú principal."
      op = gets.chomp
      while op != "d"
        if op=="a"||op=="b"||op=="c"
        cant_productos(op)
        else
          puts "Ingrese una opcion valida!"
        end
        puts "Elija una opcion:\n a)Mostrar la existencia por productos.\n b)Mostrar la existencia total por tienda.\n c)Mostrar la existencia total en todas las tiendas.\n d)Volver al menú principal."
        op = gets.chomp
      end
    elsif opcion == 2
      puts "ingresa nombre producto a buscar:"
      nom = gets.chomp
      exist_producto(nom)
    elsif opcion == 3
      no_registrado
    elsif opcion == 4
      puts "ingresa valor para filtrar menores:"
      num = gets.chomp.to_i
      menor_total(num)
    elsif opcion == 5
      puts "ingresa nombre producto:"
      nom = gets.chomp
      puts "ingresa stock bodega 1:"
      bod1 = gets.chomp
      puts "ingresa stock bodega 2:"
      bod2 = gets.chomp
      puts "ingresa stock bodega 3:"
      bod3 = gets.chomp
      text = nom+", "+bod1+", "+bod2+", "+bod3
      ingresar_producto(text)
    end
  else
    puts "ingrese una opcion valida!!"
  end
  puts "Elige una opcion:\n 1)Conocer cantidad de productos.\n 2)Cantidad de producto segun producto ingresado.\n 3)Mostrar productos no registrados\n 4)Productos con una existencia menor a valor ingresado.\n 5)Registrar un nuevo producto.\n 6)Salir del programa."
  opcion = gets.chomp.to_i
end
