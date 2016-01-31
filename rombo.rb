numeroNivel = 7#gets.chomp.
numeroMaximo = numeroNivel/2
sumaNivel = 0

for nivel in 0...numeroNivel 
	if ( nivel == 0 || nivel == numeroNivel - 1 )
		print ' ' * (numeroMaximo - nivel).abs , "*\n" 
	else
		if (sumaNivel <= numeroMaximo)
			print ' ' * (numeroMaximo - nivel).abs, '*', ' ' * (nivel + sumaNivel), "*\n"
		else
			print ' ' * (nivel-numeroMaximo).abs, '*', ' ' * (sumaNivel - nivel).abs, "*\n"
		end
	end
	sumaNivel += nivel 
end


