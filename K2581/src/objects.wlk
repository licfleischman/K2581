
object alberto {
var guitarraToca

method guitarraToca(unaGuitarra){
	guitarraToca = unaGuitarra
}

method habilidad(){
	if (guitarraToca.precio() *8 > 100)
		return 100
	else	
		return  (guitarraToca.precio() *8)
}
method tocaBien()= true
method cobra(unaPresentacion)
{
	if(self.anterior(unaPresentacion))
		return 1000
	else
		return 1200
		
	}
method anterior(unaPresentacion)
{
	return (unaPresentacion.dameAnio() == 2017 && unaPresentacion.dameMes() < 9) 
}
}
object lucia{
var solista = true
	method solista(unValor){
		solista = unValor
	}
	
	method solista(){
		return solista 
	}
	method habilidad(){
		if (solista) 
			return 70
		
		else
			return 50
	}
	method tocaBien(unaCancion){
		return unaCancion.tienePalabra("familia")
			
	} 
	method cobra(unaPresentacion){
		
		if (self.lugarConcurrido(unaPresentacion))
			return 500
		else
			return 400	
	}
	method lugarConcurrido(unaPresentacion)
	{
		return (unaPresentacion.capacidad()>5000)
	}
}
object joaquin{
	var solista = true
	method solista(unValor){
		solista = unValor
	}
	method solista(){
		return solista 
	}
	method habilidad(){
		if (solista) 
			return 20
		
		else
			return 25
	}
	method tocaBien(unaCancion){
		return (unaCancion.duracion() > 300)
			
	} 
	method cobra(unaPresentacion){
		
		if (solista)
			return 100 * unaPresentacion.duracion()
		else
			return 50	
	}
	
}

class Cancion{
	var letra
	var duracion
	method letra(unaLetra){
		letra = unaLetra
	}
	method letra()
	{
		return letra
	}
	
	method duracion(unaduracion){
		duracion = unaduracion
	}
	method duracion()
	{
		return duracion
	}
	
}
/* 
class Presentacion{
	var fecha
	var lugar
	var cantantes =[]
}
class Lugar{
	var capacidad
	
}
*/