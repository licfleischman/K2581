
object lunaPark {
	var cantidadPersonas = 9290

	method cantidadPersonas(fecha) {
		return cantidadPersonas
	}

	method esConcurrido(fecha) {
		return self.cantidadPersonas(fecha) > 5000
	}
}

object trastienda {
	var cantidadPersonas = 400

	method cantidadPersonas(fecha) {
		const sabado = 6
		if (fecha.dayOfWeek() == sabado) {
			return cantidadPersonas + 300
		}
		else return cantidadPersonas
	}

	method esConcurrido(fecha) {
		return self.cantidadPersonas(fecha) > 5000
	}
}