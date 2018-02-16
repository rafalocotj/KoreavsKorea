Feature:
	#COMO usuario
	#QUIERO visualizar el tablero
	#PARA poder ver la area de batalla
Scenario:
	Given quiero comienza la batalla
	Then debo ver "Bievenido a la batalla"
	
Scenario:
	Given quiero comienza la batalla
	Then debo ver "OOOOO" 

	Scenario:
	Given quiero comienza la batalla
	And ningun barco colocado
	Then debo ver "OOOOO" 


# ningun barco colocado debe mostrar OOOOOO
# un barco colocado en (1,2) deber mostrar OSOOOO
# una misil colocado en (1,4) debe mostar OOOOxO
# un impacto colocado en (1,5) debe mostar OOOOOX

#La area de batalla debe ser de 5x5
#debe haber 2 areas de batalla

#las posiciones vacias son ¨0¨
#las posiciones ocupadas por un barco son ¨S¨
#los misiles lanzados son ¨x¨
#Los impactos son ¨X¨¨