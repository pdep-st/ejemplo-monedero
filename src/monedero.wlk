// quiero poner/sacar plata del monedero
// cada persona tiene un monedero
// que casos de prueba plantearia

class Monedero {

	var plataActual = 0
	
	const LIMITE_RETIRO = 20000
	
	method plataActual() = plataActual
	
	method sacarPlata(montoRetirado) {
		self.validarPlataARetirar(montoRetirado)
		plataActual -= montoRetirado
	}
	
	method validarPlataARetirar(montoRetirado) {
		if (montoRetirado > LIMITE_RETIRO)
			throw new Exception(message = "no puede superar el limite de retiro")
		if (montoRetirado > plataActual)
			self.error("no hay plata suficiente")
	}

	method ponerPlata(montoAIngresar) { 
		plataActual += montoAIngresar
	}
}