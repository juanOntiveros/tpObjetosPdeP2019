class Viaje{
	
	var property origen
	var property destino
	var property medioDeTransporte
	
	constructor(unOrigen, unDestino, unMedioDeTransporte){
		origen = unOrigen
		destino = unDestino
		medioDeTransporte = unMedioDeTransporte
	}

	method costoDeLosKilometrosARecorrer(){
		return self.distanciaARecorrer() * medioDeTransporte.costoKilometro()
	}

	method precio(){
		return self.costoDeLosKilometrosARecorrer() + destino.precio()
	}
	
	method distanciaARecorrer(){
		return origen.distanciaA(destino)
	}
}
