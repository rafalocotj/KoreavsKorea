class Tablero

	def initialize()
		@posiciones
		@tablero = ['00000','00000','00000','00000','00000']
		return @tablero
	end

	def colocar_barco(coordenada)
	 @posiciones = coordenada

	 renglon = @posiciones[0].to_i
	 columna = @posiciones[1].to_i

	#	fila = Tablero[renglon]
	@tablero[renglon - 1][columna - 1] = "S"
	return @tablero
	end

	def ataque(coordenada)
	 @posiciones = coordenada

	 renglon = @posiciones[0].to_i
	 columna = @posiciones[1].to_i

	 if "S" == @tablero[renglon - 1][columna - 1]
	 	@tablero[renglon - 1][columna - 1] = "X"
	 else
	 	@tablero[renglon - 1][columna - 1] = "V"
	 end

	return @tablero
	end

end