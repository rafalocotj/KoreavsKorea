class Tablero

	def initialize()
		@tablero = ['00000','00000','00000','00000','00000']
		@posiciones
	end

	def colocar_barco(coordenada)
	 @posiciones = coordenada

	 renglon = @posiciones[0].to_i
	 columna = @posiciones[1].to_i

	#	fila = Tablero[renglon]
	@tablero[renglon - 1][columna - 1] = "S"
	return @tablero
	end

end