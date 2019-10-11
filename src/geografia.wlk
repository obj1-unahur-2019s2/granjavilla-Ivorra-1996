object oeste {
	method siguientePosicion(position) {
		if (position.x() > 0) {
			return position.left(1)
		} else {
			return position
		}
	}
	
}
