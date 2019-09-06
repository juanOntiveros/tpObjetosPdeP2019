object garlicsSea{
	
	var nombre = "Garlic´s Sea"
    var equipajeImprescindible = ["Caña de Pescar", "Piloto"]
    var precio = 2500
	
	method precio() = precio
	
    method precio(unPrecio){
    	precio = unPrecio
    }
    
    method equipajeImprescindible() = equipajeImprescindible
    
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
    
}

object silversSea{
	
	var nombre = "Silver's Sea"
    var equipajeImprescindible = ["Protector Solar", "Equipo de Buceo"]
    var precio = 1350

    method precio() = precio
    
    method precio(unPrecio){
    	precio = unPrecio
    }
    
    method equipajeImprescindible() = equipajeImprescindible
    
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
    
}

object lastToninas{

	var nombre = "Last Toninas"
    var equipajeImprescindible = ["Vacuna Gripal", "Vacuna B", "Necronomicon"]
    var precio = 3500
    
    method precio() = precio
    
    method precio(unPrecio){
    	precio = unPrecio
    }
    
    method equipajeImprescindible() = equipajeImprescindible
    
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
    
}

object goodAirs{
	
	var nombre = "Good Airs"
    var equipajeImprescindible = ["Cerveza", "Protector Solar"]
    var precio = 1500

    method precio() = precio
    
    method precio(unPrecio){
    	precio = unPrecio
    }
    
    method equipajeImprescindible() = equipajeImprescindible
    
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
    
}