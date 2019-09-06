import destinos.*
import usuarios.*

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
    
    method obtenerLosKilometrosDe(usuario) = usuario.obtenerKilometros()
    
}
