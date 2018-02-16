Feature:
	Como jugador de KoreavsKorea
	Quiero iniciar un juego
	Para divertirme

	Scenario:Debe tener un titulo de bienvenida
		Given que abri el juego
		Then debo ver "Bienvenido a Korea vs Korea"

	Scenario:Debo poder iniciar el juego 
		Given que abri el juego
		And se oprimio el boton "Iniciar"
		Then debo ver "Seleccionar las coordenadas de su Barco"	

	Scenario:Debo poder ingresar las coordenadas del Barco 
		Given que abri el juego
		And se oprimio el boton "Iniciar"
		When ingreso a "2" como "PX"
		And ingreso a "4" como "PY"
		And posiciono mi Barco
