object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}
object Paquetedeladrillos{
	var ladrillos = 0
	method peso() { return 2 }
	method peso(ladris){ladrillos += (ladris * 2)return ladrillos}
	method nivelPeligrosidad() {return 2}
	
}
object ArenaAGranel{}