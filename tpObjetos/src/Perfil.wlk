import MedioDeTransporte.*

object perfilEmpresarial {
	
	method elegirMedioDeTransporte(unosMedios, unaDistancia, unPresupuesto){
		return unosMedios.min({medio => medio.cuantoTarda()})
	}
	
}

object perfilEstudiantil {
	
	method elegirMedioDeTransporte(unosMedios, unaDistancia, unPresupuesto){
		return self.filtrarMediosQueEstanEnPresupuesto(unosMedios, unaDistancia, unPresupuesto).min({medio => medio.cuantoTarda()})
	}
	
	method filtrarMediosQueEstanEnPresupuesto(unosMedios, unaDistancia, unPresupuesto){
		return unosMedios.filter({medio => medio.costoDeLaDistanciaARecorrer(unaDistancia) <= unPresupuesto})
	}
	
}

object perfilFamiliar{
	
	method elegirMedioDeTransporte(unosMedios, unaDistancia, unPresupuesto){
		return unosMedios.anyOne()
	}
	
}