import barrileteCosmico.*
import excepciones.NoSePuedeViajarException.*
import Perfil.*

class Usuario{
	
	var property nombreDeUsuario
	var property saldo
	var property usuariosSeguidos
	var property viajes
	var property origen
	var property perfil
	
	constructor(unNombre, unSaldo, unosUsuarios, unosViajes, unOrigen, unPerfil){
		nombreDeUsuario = unNombre
		saldo = unSaldo
		usuariosSeguidos = unosUsuarios
		viajes = unosViajes
		origen = unOrigen
		perfil = unPerfil
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
	
	method elegirMedioDeTransporte(unosMedios, unaDistancia){
		return perfil.elegirMedioDeTransporte(unosMedios, unaDistancia, saldo)
	}
	
	method viajar(unaLocalidad){
		const unViaje = barrileteCosmico.armarViaje(self,unaLocalidad) 
		if (!self.puedeViajar(unViaje)) throw new NoSePuedeViajarException(message = "El usuario no tiene el saldo suficiente para viajar.")
		viajes.add(unViaje)
		self.origen(unViaje.destino())
		self.restarSaldo(unViaje.precio())
	}
	
}