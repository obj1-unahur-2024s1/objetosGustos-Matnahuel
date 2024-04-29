import objetos.*
import personas.*

object bolichito{
	var objetoVidriera
	var objetoMostrador
	
	method ponerEnVidriera(objeto){
		objetoVidriera = objeto
	}
	
	method ponerEnMostrador(objeto){
		objetoMostrador = objeto
	}
	
	method esBrillate(){
		return objetoVidriera.material().brilla() and objetoMostrador.material().brilla()
	}
	
	method esMonocromatico(){
		return objetoVidriera.color() == objetoMostrador.color()
	}
	
	method estaDesequilibrado(){
		return objetoMostrador.peso() > objetoVidriera.peso()
	}

	method tieneAlgoDeColor(color){
		return objetoMostrador.color() == color  or objetoVidriera.color() == color
	}
	
	method puedeMejorar(){
		return self.estaDesequilibrado() or self.esMonocromatico()
 	}
 	
 	method puedeOfrecerleAlgoA(persona){
 		return persona.leGustan(objetoVidriera) or persona.leGustan(objetoMostrador)
 	}
}

