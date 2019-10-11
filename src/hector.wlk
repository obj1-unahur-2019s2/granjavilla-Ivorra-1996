import wollok.game.*
import cultivos.*

object hector {
	var property position = new Position(x = 9, y = 0)
	var property image = "player.png"
	var property plantasCosechadas = []
	
	method plantarMaiz() {
		game.addVisual(new Maiz(position=self.position()))
	}

	method plantarTrigo() {
		game.addVisual(new Trigo(position=self.position()))
	}
	
	method regarPlanta() {
		// el colliders siempre devuelve una colección
		// puede ser vacía, de un elemento, o de muchos elementos
		// pero es *siempre* una colección
		game.colliders(self).forEach({ planta => planta.regate()})
	}
	
	method cosecharPlanta() {
		game.colliders(self).forEach({ planta =>
			game.removeVisual(planta) 
			plantasCosechadas.add(planta)
		})
	}
	
	method cantidadDePlantasCosechadas() {
		return plantasCosechadas.size()
	}

	method moveteALaIzquierda() {
		if (position.x() > 0) {
			position = position.left(1)
		} else {
			game.say(self, "estoy en el borde ameo")
		}
	}	

	method moveteHaciaArriba() {
		// height es altura, width es ancho
		if (position.y() < game.height() - 1) {
			position = position.up(1)
		}
	}	

	method moveteALaDerecha() {
		if (position.x() < game.width() - 1) {
			position = position.right(1)
		}else {
			game.say(self, "estoy en el borde ameo")
		}
	}	

	method moveteHaciaAbajo() {
		// height es altura, width es ancho
		if (position.y() > 0) {
			position = position.down(1)
		}
	}	
	
}