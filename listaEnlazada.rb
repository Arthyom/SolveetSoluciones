entradaNumeros = gets.chomp.to_i
lista 		   = Array.new(entradaNumeros) { |i| i = gets.chomp.to_i }
print lista.sort
