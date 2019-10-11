import wollok.game.*
import hector.*
import oso.*

object nivel1 {
	method configurar() {
		//  VISUALES
		// el "Character" le da movimiento con las teclas 
	 	game.addVisual(hector)
	 	game.addVisual(oso)
	 	
		// CONTROL DE TECLADO
		keyboard.s().onPressDo({game.say(hector, "hola gente")})
		keyboard.o().onPressDo({hector.position(new Position(x = 0, y = 0))})
		keyboard.m().onPressDo({ hector.plantarMaiz() })
		keyboard.t().onPressDo({ hector.plantarTrigo() })
		keyboard.r().onPressDo({ hector.regarPlanta() })
		keyboard.c().onPressDo({ hector.cosecharPlanta() })
		keyboard.p().onPressDo({ 
			game.say(hector, 
			"tengo cosechadas " + hector.cantidadDePlantasCosechadas() + " plantas"
			)
		})
		keyboard.left().onPressDo({ hector.moveteALaIzquierda()})
		keyboard.right().onPressDo({ hector.moveteALaDerecha()})
		keyboard.up().onPressDo({ hector.moveteHaciaArriba()})
		keyboard.down().onPressDo({ hector.moveteHaciaAbajo()})
		
		// COLISIONES
		game.whenCollideDo(oso, { objeto => objeto.teChocoElOso() })
		
		// ACCIONES AUTOMÁTICAS
		game.onTick(1000, "oso se mueve", { oso.moveteAlAzar() })
		
	}	
	
}
