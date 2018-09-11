object rolando {
	var hechizoFavorito = hechizoVariable
	
	// fuerza oscura debe ser un objeto ya que es una variable global
	var fuerzaOscura = 5
	var valorLucha = 1
	var artefactos = #{}
	const valorBase = 3
	
	method nivelDeHechiceria() {
		return ((valorBase * hechizoFavorito.poder()) + fuerzaOscura)
	}
	
	method cambiarHechizoFavorito(unHechizo) {
		hechizoFavorito = unHechizo
	}
	
	// el eclipse debe ser un objeto porque afecta a varios elementos
	
	method hayEclipse() {
		fuerzaOscura *= 2
	}
	
	method seCreePoderoso() {
		hechizoFavorito.esPoderoso()
	}
	
	method fuerzaOscura() {
		return fuerzaOscura
	}
	
	method agregarArtefacto(unArtefacto) {
		if(!self.tieneAlArtefacto(unArtefacto)) {
			artefactos.add(unArtefacto)
			valorLucha += unArtefacto.aportaPoder()
		}	
	}
	
	
	method removerArtefacto(unArtefacto) {
		if(self.tieneAlArtefacto(unArtefacto)){
			artefactos.remove(unArtefacto)
				valorLucha -= unArtefacto.aportaPoder()
		}
	}
	
	method tieneAlArtefacto(unArtefacto) {
		return artefactos.contains(unArtefacto)
	}
	// falta calculo de habilidad para lucha
	// falta poder modificar la habilidad base de lucha de rolando
}

object hechizoBasico {
	method poder() {
		return 10
	}
	method esPoderoso() {
		return false
	}
}

object hechizoVariable {
	var nombre = "Espectro malefico"
	
	method poder() {
		return nombre.size()
	}
	
	method esPoderoso() {
		return self.poder() > 15
	}
	
	method cambiarDeNombre(unNombre) {
		nombre = unNombre
	}
}

object espadaDelDestino {
	method aportaPoder() {
		return 3
	}
}

object collarDivino {
	var perlas = 0
	
	method perlas(unaCantidad) {
		perlas = unaCantidad
	}
	
	method aportaPoder() {
		return perlas 
	}
}

object mascaraOscura {
	method aportaPoder() {
		if(rolando.fuerzaOscura() > 8) {
			return rolando.fuerzaOscura() / 2
		}
		else {
			return 4
		}
	}
}
