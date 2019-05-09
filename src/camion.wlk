import cosas.*

object camion {
	const property cosas = []
	
	method cargar(unaCosa) {cosas.add(unaCosa)}
	
	method descargar(unaCosa){cosas.remover(unaCosa)}
	
	method pesoTotal(){return cosas.all{c => c.peso() + 1000}}
	
	method excedidoDePeso(){return self.pesoTotal() > 2500}
	
	method objetosPeligrosos(nivel){//todos los objetos cargados que superan el nivel de peligrosidad
				return cosas.filter{c => c.nivelPeligrosidad() > nivel} 	// indicados por el valor del parámetro
		
	}
	method objetosMasPeligrososQue(cosa){
		return cosas.filter{c => c.nivelPeligrosidad() > cosa.nivelPeligrosidad()}
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){//any u all devuelve booleanos si es menor devuelve true
		return cosas.any{ c => c.nivelPeligrosidad() < nivelMaximoPeligrosidad
		}
	}
	method tieneAlgoQuePesaEntre(min, max){//devuelve verdadero o falso
		cosas.any({ e => e.peso().between(min, max)})//esta entre min y max 
		//todo lo que pusimos se llama clousure o expresion labda(bloque de codigo)
	}
	method cosaMasPesada(){
		return cosas.max({e => e.peso() })
	}
	
	
}
