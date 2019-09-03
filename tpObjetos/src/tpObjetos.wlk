object barrileteCosmico 
{
    var destinos = [garlicsSea, silversSea, lastToninas, goodAirs]
    var usuarios = [pHari]
    
    method destinosDestacados()
    	{
        return destinos.filter({unDestino => unDestino.precio() > 2000})
    	}
    method destinos() = destinos
    method descuento(porcentaje)
    	{
    	destinos.forEach({unDestino => unDestino.precio(unDestino.precio() - unDestino.precio()*porcentaje/100)})
    	destinos.forEach({unDestino => unDestino.agregarEquipajeImprescindible("Certificado de Descuento")})
    	}
    method empresaExtrema()
    	{
    	//Completar. lo intente resolver de esta forma method empresaExtrema(){return equipajeImprescindible.contains("Piloto")} 
    	//esto funciona dentro de los objetos destinos pero no pude meterlo aca para que funcione
    	}
    method cartaDestino() = destinos
}

object garlicsSea
{
    var equipajeImprescindible = ["Caña de Pescar", "Piloto"]
    var precio = 2500
	
	method precio(){return precio}
    method precio(unPrecio){precio = unPrecio}
    
    method equipajeImprescindible(){return equipajeImprescindible}
    method agregarEquipajeImprescindible(equipaje){equipajeImprescindible.add(equipaje)}
}

object silversSea
{
    var equipajeImprescindible = ["Protector Solar", "Equipo de Buceo"]
    var precio = 1350

    method precio(){return precio}
    method precio(unPrecio){precio = unPrecio}
    
    method equipajeImprescindible(){return equipajeImprescindible}
    method agregarEquipajeImprescindible(equipaje){equipajeImprescindible.add(equipaje)}
}

object lastToninas
{
    var equipajeImprescindible = ["Vacuna Gripal", "Vacuna B", "Necronomicon"]
    var precio = 3500
    
    method precio(){return precio}
    method precio(unPrecio){precio = unPrecio}
    
    method equipajeImprescindible(){return equipajeImprescindible}
    method agregarEquipajeImprescindible(equipaje){equipajeImprescindible.add(equipaje)}
}

object goodAirs
{
    var equipajeImprescindible = ["Cerveza", "Protector Solar"]
    var precio = 1500

    method precio(){return precio}
    method precio(unPrecio){precio = unPrecio}
    
    method equipajeImprescindible(){return equipajeImprescindible}
    method agregarEquipajeImprescindible(equipaje){equipajeImprescindible.add(equipaje)}
}

object pHari
{
	//var nombre = "Pablo Hari"
	var cuentaBarrileteCosmico = 1500
	var usuariosSeguidos = #{}
	var usuariosSeguidores = #{}
	var conoceDestinos = #{lastToninas, goodAirs}
	
	method cuentaBarrileteCosmico() = cuentaBarrileteCosmico
	method volarAUnDestino(destino)
		{
			if(self.cuentaBarrileteCosmico() > destino.precio())
			conoceDestinos.add(destino)
			cuentaBarrileteCosmico =- destino.precio()
		}	
	method kilometros()
		{
			return conoceDestinos.sum({unDestino => unDestino.precio()*0.1})
		}	
	method seguirA(usuario)
		{
			usuariosSeguidos.add(usuario)
			usuariosSeguidores.add(usuario)
		}
}