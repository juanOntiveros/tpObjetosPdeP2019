class Viaje{
	
	var property origen
	var property destino
	var property medioDeTransporte
	
	constructor(unOrigen, unDestino, unMedioDeTransporte){
		origen = unOrigen
		destino = unDestino
		medioDeTransporte = unMedioDeTransporte
	}

	method precio(){
		return medioDeTransporte.costoDeLaDistanciaARecorrer(self.distanciaARecorrer()) + destino.precio()
	}
	
	method distanciaARecorrer(){
		return origen.distanciaA(destino)
	}
}
