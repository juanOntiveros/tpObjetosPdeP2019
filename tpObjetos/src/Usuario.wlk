class Usuario{
	
	var property nombreDeUsuario
	var property saldo
	var property usuariosSeguidos
	var property viajes
	var property origen
	
	constructor(unNombre, unSaldo, unosUsuarios, unosViajes, unOrigen){
		nombreDeUsuario = unNombre
		saldo = unSaldo
		usuariosSeguidos = unosUsuarios
		viajes = unosViajes
		origen = unOrigen
	}
	
	method restarSaldo(valor){
		saldo -= valor
	}
	
	method obtenerKilometros(){
		return viajes.sum({viaje => viaje.distanciaARecorrer()})
	}	
	
	method agregarUsuarioConocido(usuario){
		usuariosSeguidos.add(usuario)
	}
    
    method seguirA(otroUsuario){
    	self.agregarUsuarioConocido(otroUsuario)
    	otroUsuario.agregarUsuarioConocido(self)
    }
    
    method tieneElMismoOrigen(unViaje){
    	return origen == unViaje.origen()
    }
	
	method puedeViajar(unViaje){
		return saldo >= unViaje.precio()
	}
	
	method viajar(unViaje){
		if (self.tieneElMismoOrigen(unViaje) && self.puedeViajar(unViaje)){
			viajes.add(unViaje)
			self.origen(unViaje.destino())
			self.restarSaldo(unViaje.precio())
		}
	}
	
}