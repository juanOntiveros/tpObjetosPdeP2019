import Viaje.*

object barrileteCosmico{
	
    var localidades = #{}
    var mediosDeTransporte = #{}
    
    method localidades() = localidades
    method localidades(unasLocalidades){
    	localidades = unasLocalidades
    }
    
    method agregarMedioDeTransporte(unMedio){
    	mediosDeTransporte.add(unMedio)
    }
    
  	method agregarLocalidad(unaLocalidad){
  		localidades.add(unaLocalidad)
  	}
    
    method destinosMasImportantes(){
        return localidades.filter({localidad => localidad.esDestacado()})
    }
    
    method aplicarDescuentos(porcentaje){
    	localidades.forEach({localidad => localidad.aplicarDescuento(porcentaje)})
    }
    
    method esEmpresaExtrema(){
    	return localidades.any({localidad => localidad.esPeligroso()})
    }
    
    method obtenerDestinosMasPeligrosos(){
    	return localidades.filter({localidad => localidad.esPeligroso()})
    }
    
    method cartaDeDestinos() {
    	return localidades.map({localidad => localidad.nombre()})
    }
    
    method obtenerLosKilometrosDe(usuario) = usuario.obtenerKilometros()
    
    method armarViaje(usuario, destino){
    	const medioDeTransporte = mediosDeTransporte.anyOne()
    	const origen = usuario.origen()
    	usuario.viajar(new Viaje(origen, destino, medioDeTransporte))
    }
    
}
