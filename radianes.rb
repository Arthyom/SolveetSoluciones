### convertir radianes en sexagesimales y al revez

def mostrarMenu	( )
	puts " [1] Sexgs -> Rad \n [2] Rad -> Sexgs \n [3] * Salir "
		opcion = gets.chomp.to_i
	return opcion
end

def conversion	( rdns, sxgs, modo )
	if ( modo == 1 )
		puts " Radianes = #{rdns} -> Sexagesimales = #{rdns* Math::PI/180} "
	else
		puts " Sexagesimales = #{sxgs} -> radianes = #{ sxgs * 180 /Math::PI } "
	end
end

### script principal
while (true)

	opcion = mostrarMenu( )
	
	case (opcion)
		when 1
			puts"Valor en radianes"
			rdns   = gets.chomp.to_f
			conversion( rdns, 1, 1 )
		when  2
			puts"Valor en sexgs"
			sexs = gets.chomp.to_f
			conversion( 1, sexs, 2 )
		when 3
				break;
	end

end






