import wollok.game.*
import geografia.*

object oso {
	var property position = new Position(x = 6, y = 6)
	
	method image() = "oso.jpg"
	
	method moveteALaIzquierda() {
		if (position.x() > 0) {
			position = position.left(1)
		}
	}	

	method moveteHaciaArriba() {
		// height es altura, width es ancho
		if (position.y() < game.height() - 1) {
			position = position.up(1)
		}
	}	

	method moveteALaDerecha() {
		if (position.x() > 0) {
			position = position.left(1)
		}
	}	

	method moveteHaciaAbajo() {
		// height es altura, width es ancho
		if (position.y() < game.height() - 1) {
			position = position.up(1)
		}
	}	
	
	method mover(direccion) {
		// que la dirección me diga a dónde me tengo que mover
		// para eso, le tengo que decir dónde estoy parado ahora
		position = direccion.siguientePosicion(position)
	}
	
	method moveteAlAzar() {
		// 1.randomUpTo(5): tira el dado, entre 1 y 4.9999999999...
		// truncate(n): "recorta" un número n posiciones a la derecha de la coma
		var dado = 1.randomUpTo(5).truncate(0)	
		
		if (dado == 1) {
			self.mover(oeste)
//			self.moveteALaIzquierda()
		} else if (dado == 2) {
//			self.mover(norte)
			self.moveteHaciaArriba()
		} else if (dado == 3) {
//			self.mover(este)
			self.moveteALaDerecha()
		} else if (dado == 4) {
//			self.mover(sur)
			self.moveteHaciaAbajo()
		}
	}
}








