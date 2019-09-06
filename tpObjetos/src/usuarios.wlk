import destinos.*

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
	
	method puedeVolarA(destino){
		return saldo >= destino.precio()
	}
	
	method sumaPreciosDeDestinosConocidos(){
		return destinosConocidos.sum({unDestino => unDestino.precio()})
	}
	
	method obtenerKilometros(){
		return self.sumaPreciosDeDestinosConocidos() * 0.1
	}	
	
	method agregarUsuarioConocido(usuario){
		usuariosSeguidos.add(usuario)
	}
	
	method volarA(destino){
    	if (self.puedeVolarA(destino)){
    		self.agregarDestinoConocido(destino)
    		self.restarSaldo(destino.precio())
    	}
    }
    
    method seguirA(otroUsuario){
    	self.agregarUsuarioConocido(otroUsuario)
    	otroUsuario.agregarUsuarioConocido(self)
    }
	
}