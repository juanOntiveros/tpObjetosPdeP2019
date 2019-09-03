object barrileteCosmico{
	
    var destinos = #{garlicsSea, silversSea, lastToninas, goodAirs}
    
    method destinosMasImportantes(){
        return destinos.filter({destino => destino.esDestacado()})
    }
    
    method aplicarDescuentos(porcentaje){
    	destinos.forEach({destino => destino.aplicarDescuento(porcentaje)})
    }
    
    method esEmpresaExtrema(){
    	return destinos.any({destino => destino.esPeligroso()})
    }
    
    method obtenerDestinosMasPeligrosos(){
    	return destinos.filter({destino => destino.esPeligroso()})
    }
    
    method cartaDeDestinos() {
    	return destinos.map({destino => destino.nombre()})
    }
    
    method destinos() = destinos
    
    method usuarioPuedeVolar(usuario, destino){
    	return usuario.saldo() >= destino.precio()
    }
    
    method volarAUnDestino(usuario, destino){
    	if (self.usuarioPuedeVolar(usuario, destino)){
    		usuario.agregarDestinoConocido(destino)
    		usuario.restarSaldo(destino.precio())
    	}
    }
    
    method obtenerLosKilometrosDe(usuario) = usuario.obtenerKilometros()
    
    method seguirUsuario(usuario, otroUsuario){
    	usuario.seguirA(otroUsuario)
    	otroUsuario.seguirA(usuario)
    }
    
}

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

object pHari{
	
	var nombreDeUsuario = "PHari"
	var saldo = 1500
	var usuariosSeguidos = #{}
	var destinosConocidos = #{lastToninas, goodAirs}
	
	method nombreDeUsuario() = nombreDeUsuario
	
	method saldo() = saldo
	
	method agregarDestinoConocido(destino){
		destinosConocidos.add(destino)
	}
	
	method conoceDestino(destino){
		return destinosConocidos.contains(destino)
	}
	
	method restarSaldo(valor){
		saldo -= valor
	}
	
	method sumaPreciosDeDestinosConocidos(){
		return destinosConocidos.sum({unDestino => unDestino.precio()})
	}
	
	method obtenerKilometros(){
		return self.sumaPreciosDeDestinosConocidos() * 0.1
	}	
	
	method seguirA(usuario){
		usuariosSeguidos.add(usuario)
	}
	
}