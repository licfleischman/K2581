import Presentacion.*
import guitarra.*
import lugar.*

object joaquin {
	var grupo = "Pimpinela"
	var habilidad = 20
	
	method grupo(){
		return grupo
	}
	
	method habilidad(presentacion) {
		if (self.cantaEnGrupo(presentacion))
			return habilidad + 5
		else
			return habilidad
	}
	
	method interpretaBien(cancion) {
		return cancion.duraMasDe(300)
	}

	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}

	method cobra(presentacion) {
		if(self.cantaEnGrupo(presentacion))
			return 50
		else
			return 100		
 	}	
}


object lucia {
	var grupo = "Pimpinela"
	var habilidad = 70
	
	method grupo(){
		return grupo
	}
	
	method habilidad(presentacion) {
		if (self.cantaEnGrupo(presentacion)) 
			return habilidad - 20
		else
			return habilidad
	}

	method interpretaBien(cancion) {
		return cancion.tienePalabra("familia")
	}

	method cantaEnGrupo(presentacion) {
		return presentacion.cantaEnGrupo(self)
	}

	method cobra(presentacion) {
		if (presentacion.esConcurrida())
			return 500
		else
			return 400
	}	
}


object luisAlberto {

	var guitarra
	
	method habilidad(presentacion) {
		return 100.min(8 * guitarra.valor())
	}
	
	method tocarCon(guitar){
		guitarra = guitar
	}
	
	//interpreta bien todas las canciones
	method interpretaBien(cancion) {
		return true
	}
	
	method cobra(presentacion){
		if(presentacion.antesDe(1, 9, 2017)){
			return 1000
		} else {
			return 1200
		}
	}
	
	method tratarMal(guitar){
		guitar.romperse()
	}
	
	method guitarra(){
		return guitarra
	}
}
