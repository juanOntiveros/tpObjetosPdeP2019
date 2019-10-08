class MedioDeTransporte{
		
	var property cuantoTarda	
	var property costoKilometro
	
	constructor(tiempo, costo){
		cuantoTarda = tiempo
		costoKilometro = costo
	}
	
	method costoDeLosKilometrosARecorrer(unaDistancia) = unaDistancia * costoKilometro
	
}