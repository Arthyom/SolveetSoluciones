listaAlumnos = Array.new()


puts " elija su opcion \n 1) alta 2)baja  \n 3) salir \n 4) salir  "
opcion = gets.chomp.to_i
while (opcion != 4)

if (opcion == 1 )
	## dar de alta
	nombre = gets.chomp
	if ( !(listaAlumnos.include? nombre) )
		listaAlumnos.push nombre
		

	end
elsif (opcion == 2 )
		
	## dar de baja 
	nombre = gets.chomp
		listaAlumnos.delete nombre.to_s
		

elsif (opcion == 3)
	print listaAlumnos
end


puts " elija su opcion \n 1) alta 2)baja  \n 3) ver  \n 4) salir"
opcion = gets.chomp.to_i

end

