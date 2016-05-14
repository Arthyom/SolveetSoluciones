def TipoUno ( numero )
	numero.times do |nivel|
		puts '*' * (nivel+1)
	end
end

def TipoDos (numero)
	numero.times do |nivel|
		puts '*' * (nivel-numero).abs 
	end
end

def TipoTres (numero)
	(2*numero).times do |nivel|
		puts '*' *  (numero - (nivel-numero).abs).abs
	end
end

def TipoCuatro (numero)
	(numero + 1).times do |nivel|
		if nivel > 0
			print ' '* (numero-nivel), '*' * nivel, '*' * (nivel-1).abs , "\n"
		end
	end
end

def TipoCinco (numero)
	(numero ).times do |nivel|
			print ' '* (numero -(numero-nivel)), '*' * (numero-nivel).abs, '*' * (numero-nivel-1).abs, "\n"
	end
end

def TipoSeis (numero)
	TipoCuatro(numero)
	TipoCinco(numero)
	
end

def TipoSiete (numero)
	(numero).times do |nivel|
		if (nivel>0)
			print '*'* (numero-nivel), ' ' * nivel, ' ' * (nivel-1).abs , '*'* (numero-nivel),"\n"
		else
			print '*'* (numero-nivel-1), ' ' * (nivel).abs, ' ' * (nivel), '*'* (numero-nivel),"\n"
		end	
	end
end

def TipoOcho(numero)
		(numero+1).times do |nivel|
		if (nivel==numero)
			print '*'* nivel, ' ' * (nivel-numero).abs, '*'* nivel,"\n"
		else
			print '*'* nivel, ' ' * (nivel-numero).abs, ' ' * (nivel-numero).abs ,'*'* nivel,"\n"
		end	
	end
end

TipoOcho(5)