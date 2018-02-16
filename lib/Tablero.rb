class Tablero

	@tablero =["OSOOO","OOOOO","OOOOO","OOOOO","OOOOO"]

	def colocar_barco(barco = "12")
	 
	 renglon = barco[0].to_i
	 columna = barco[1].to_i

	#	fila = Tablero[renglon]
	@tablero[renglon - 1][columna - 1] = "S"

	end

end