import musico.*
import lugar.*

class Presentacion {
	var fecha 
	var lugar
	var artistas = #{ }

	constructor(unaFecha, unLugar, listaArtistas) {
		fecha = unaFecha lugar = unLugar artistas = listaArtistas
	}

	method costo() {
		return artistas.map{ artista => artista.cobra(self) }.sum()
	}

	method cantidadPersonas() {
		return lugar.cantidadPersonas(fecha)
	}

	method esConcurrida() {
		return lugar.esConcurrido(fecha)
	}

	method antesDe(dia, mes, anio) {
		return fecha < new Date(dia, mes, anio)
	}

	method cantaEnGrupo(artista) {
		return artistas.contains(artista) && artistas.size() > 1
	}

	method agregarArtistas(artista) {
		artistas.add(artista)
	}

	method eliminarArtista(artista) {
		artistas.remove(artista)
	}

	method artistas(listaDeArtistas) {
		artistas = listaDeArtistas
	}

	method lugar() {
		return lugar
	}

	method fecha() {
		return fecha
	}

	method fecha(d, m, a) {
		fecha = new Date(d, m, a)
	}
}
