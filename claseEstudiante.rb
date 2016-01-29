# clase estudian

### declarar la clase estdiante 
class Estudiante 

	def initialize 		()
		@nombreEstudiante 		= 0
		@matriculaEstudiante    = 0
		@parcial1				= 0
		@parcial2				= 0
		@parcial3				= 0
		@final					= 0
	end

	def setNombre	    (nombre)
		@nombreEstudiante = nombre
	end

	def setMatricula	(matriculaEstudiante)
		@matriculaEstudiante = matriculaEstudiante
	end

	def setParcial1		(parcial1)
		@parcial1 = parcial1
	end

	def setParcial2		(parcial2)
		@parcial2 = parcial2
	end

	def setParcial3		(parcial3)
		@parcial1 = parcial3
	end

	def setFinal		(final)
		@final = final
	end

	def getFinal		()
		return @final
	end

	def getProm			()
		return (@parcial1 + @parcial2 + @parcial3 )/3
	end

	def getNombre		()
		return @nombreEstudiante
	end

	def getCalif		()
		return (@parcial1 + @parcial2 + @parcial3 )/3
	end
end

###### funciones definidas
def ordenrarFinal ( grupoEstudiantes )
	fnlCal = Array.new
	grupoEstudiantes.each{ |elemnt| fnlCal.push elemnt.getFinal }
	print fnlCal.sort, "\n"
end

def ordenrarEstNom( grupoEstudiantes )
	nmbEst = Array.new
	grupoEstudiantes.each{ |elemnt| nmbEst.push elemnt.getNombre }
	
	print nmbEst.sort,"\n"
end

def ordenByFinal  (grupoEstudiantes)
	calFnl = Array.new
	nmbEst = Array.new

	grupoEstudiantes.each do |elemnt|
		calFnl.push elemnt.getFinal
	end

	calFnl.sort!{|x,y| y <=> x}

	for numero in 0..(calFnl.size-1)
		grupoEstudiantes.each do |elemnt|
			if (elemnt.getFinal == calFnl[numero])
				nmbEst.push elemnt.getNombre
			end
		end
	end

	print nmbEst, "\n"
	print calFnl,"\n"
end

###### script principal
numeroGrupo = gets.chomp.to_i
grupoEst	= Array.new(numeroGrupo) { |elemnt| elemnt  = Estudiante.new }

	### escanear calificacion 
	
	grupoEst.each do |elemnt| 
		puts " Escriba NOMBRE  MATRICULA PARCIAL1 PARCIAL2 FINAL del estdiante"
		nombre = gets.chomp.to_s
		matriculaEstudiante = gets.chomp.to_s
		parcial1 = gets.chomp.to_f
		parcial2 = gets.chomp.to_f
		parcial3 = gets.chomp.to_f
		final    = gets.chomp.to_f

		elemnt.setNombre(nombre)
		elemnt.setMatricula(matriculaEstudiante)
		elemnt.setParcial1(parcial1)
		elemnt.setParcial2(parcial2)
		elemnt.setParcial3(parcial3)
		elemnt.setFinal(final)
	end

	### hacer operaciones 
	ordenrarFinal(grupoEst)
	ordenrarEstNom(grupoEst)
	ordenByFinal(grupoEst)




