class Localidad{
	
	var property nombre
	var property equipajeImprescindible
	var property precio
	var property kilometro
	
	constructor(unNombre, unosEquipajes, unPrecio, unKilometro){
		nombre = unNombre
		equipajeImprescindible = unosEquipajes
		precio = unPrecio
		kilometro = unKilometro
	}
	
	method agregarEquipajeImprescindible(equipaje){
    	equipajeImprescindible.add(equipaje)
    }
    
    method contieneEquipajeImprescindible(equipaje){
    	return equipajeImprescindible.contains(equipaje)
    }
    
    method nombre() = nombre
    
    method esPeligroso(){
		return equipajeImprescindible.any({equipaje => equipaje.contains("Vacuna")})
	}
    
    method aplicarDescuento(porcentaje){
    	precio = precio - precio * porcentaje / 100
    	self.agregarEquipajeImprescindible("Certificado de descuento")
    }
    
    method esDestacado() = precio > 2000
    
    method distanciaA(otraLocalidad){
    	const diferencia = self.kilometro() - otraLocalidad.kilometro()
    	return diferencia.abs()
    }
    
}

class Playa inherits Localidad {
	
	override method esPeligroso() = false

}

class Montania inherits Localidad {
	
	var property altura
	
	constructor(unNombre, unosEquipajes, unPrecio, unKilometro, unaAltura) = 
		super(unNombre, unosEquipajes, unPrecio, unKilometro){
		altura = unaAltura
	}
	
	override method esPeligroso() = super() && altura > 5000
	
	override method esDestacado() = true
	
}

class CiudadHistorica inherits Localidad{
	
	var property museos
	
	constructor(unNombre, unosEquipajes, unPrecio, unKilometro, unosMuseos) = 
		super(unNombre, unosEquipajes, unPrecio, unKilometro){
		museos = unosMuseos
	}
	
	method agregarMuseo(unMuseo){
		museos.add(unMuseo)
	}
	
	// Comentar dudas del enunciado acarca de asistencia al viajero y el usuario
	
	override method esPeligroso(){
		return equipajeImprescindible.all({equipaje => !equipaje.contains("Asistencia al viajero")})
	}
	
	method tiene3oMasMuseos(){
		return museos.size() >= 3
	} 
	
	override method esDestacado() = super() && self.tiene3oMasMuseos()
	
}

