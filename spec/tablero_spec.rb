require './lib/Tablero.rb'

describe Tablero do 
	it "12" do 

		#arrange
		tablero = Tablero.new
		tableroEsperado = ['0S000','00000','00000','00000','00000']

		#
		result = tablero.colocar_barco("12")
		expect(result).to eq tableroEsperado		
	end

	it "21" do 

		#arrange
		tablero = Tablero.new
		tableroEsperado = ['00000','S0000','00000','00000','00000']

		#
		result = tablero.colocar_barco("21")
		expect(result).to eq tableroEsperado		
	end
	
end