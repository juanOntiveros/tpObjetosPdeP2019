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