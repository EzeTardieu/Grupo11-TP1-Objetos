object rolando {
	var hechizoFavorito = hechizoVariable
	var fuerzaOscura = 5
	const valorBase = 3
	
	/*method nivelDeHechiceria() {
		return ((valorBase * hechizoFavorito) + fuerzaOscura)
	}*/
}

object hechizoBasico {
	method poder() {
		return 10
	}
	method esPodereso() {
		return false
	}
}

object hechizoVariable {
	var nombre = "Espectro malefico"
	
	method poder() {
		return nombre.size
	}
	
	method esPoderoso() {
		if(self.poder > 15){
		return true
		}
		else{
			return false
		}
	}
}