Feature:
	Como jugador de KoreavsKorea
	Quiero comenzar la batalla
	Para divertirme

	Scenario:Debo poder ingresar las coordenadas del Barco 
		Given que abri el juego
		And se oprimio el boton "Iniciar"
		When ingreso a "2" como "PX"
		And ingreso a "4" como "PY"
		And posiciono mi Barco
		And visualizar pantalla de batalla	