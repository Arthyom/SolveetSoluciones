### el programa de la funcion de maria 

class Persona 
	def initialize ( )
		@nombre 
		@edad.to_i
	end

	def getEdad				( )
		return @edad
	end

	def getNombre 			( )
		return @nombre
	end

	def setAtrbts			( )
		puts " escriba nombre y edad de las personas "
			@nombre = gets.chomp
			@edad   = gets.chomp.to_i
	end
end



def funcionEdadBooleana ( persona, edadMaxima )
	if ( persona.getEdad >= edadMaxima )
		return true
	else 
		return false 
	end
end


puts " escriba numero de personas "
	nmrEnt = gets.chomp.to_i

	while(true)
		## iterar para cada persona 
		vector = Array.new(nmrEnt){|elmnt| elmnt = Persona.new }
		vector.each do |elmnt|
			elmnt.setAtrbts( ) 
		end

		vector.each do |elmnt|
			if ( funcionEdadBooleana( elmnt,18 ) )
				puts "#{elmnt.getNombre()} #{elmnt.getEdad} MAYOR DE EDAD"
			else
				puts "#{elmnt.getNombre()} #{elmnt.getEdad} MENOR DE EDAD"
			end
		end

		puts " escriba * para salir "
			extCar = gets.chomp

		if ( extCar == '*' )
			break;
		else
			puts " escriba numero de personas "
				nmrEnt = gets.chomp.to_i
		end

	end


