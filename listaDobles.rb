### lista de numero imparares 
	numeroN = 2#gets.chomp.to_i
	numeroM = 11#gets.chomp.to_i
	dobles = Array.new

	for numero in numeroN..numeroM do 
		if (numero.to_i % 2 != 0 ) then
			dobles.push( numero *= 2 )
		end
	end

	print dobles