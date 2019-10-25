import Turbina.*

class MedioDeTransporte{
		
	var cuantoTarda	
	var costoPorUnidadDeLongitud
	
	constructor(tiempo, costo){
		cuantoTarda = tiempo
		costoPorUnidadDeLongitud = costo
	}
	
	method cuantoTarda() = cuantoTarda
	
	method costoKilometro() = costoPorUnidadDeLongitud  // El costo se calcula directamente por kilometro
	
	method costoDeLaDistanciaARecorrer(unaDistancia) = unaDistancia * self.costoKilometro()
	
}

class Avion inherits MedioDeTransporte {
	
	var property turbinas
	
	constructor(tiempo, unasTurbinas) = super(tiempo, 0){
		turbinas = unasTurbinas
	}
	
	method agregarTurbina(unaTurbina){
		turbinas.add(unaTurbina)
	}
	
	override method costoKilometro(){
		return turbinas.sum({turbina => turbina.nivelDeImpulsoAdicional()})
	}
	
}

class Micro inherits MedioDeTransporte {
	
	constructor(tiempo) = super(tiempo, 5000){}
	
}

class Tren inherits MedioDeTransporte{
	
	constructor(tiempo) = super(tiempo, 2300){}		// 2300 costo por milla
	
	override method costoKilometro(){
		return 0.621371 * costoPorUnidadDeLongitud
	}
	
	method costoMilla(){
		return costoPorUnidadDeLongitud
	}
	
	// 0.621371 milla es 1 km por lo tanto si multiplico el costo por milla por 0.621371 
	// obtengo el costo por kilometro. El metodo costoDeLaDistanciaARecorrer(unaDistancia) 
	// sigue funcionando sin problemas.
	
}

class Barco inherits MedioDeTransporte {
	
	var property probabilidadDeChocarConUnIceberg
	
	constructor(tiempo, unaProbabilidad) = super(tiempo, 0){
		probabilidadDeChocarConUnIceberg = unaProbabilidad
	}
	
	override method costoKilometro(){
		return 1000 * probabilidadDeChocarConUnIceberg
	}
	
}

