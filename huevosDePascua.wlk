object huevoRepostero {
  method tieneChocolateBlanco() = true
  
  method tieneChocolateAmargo() = false
  
  method calorias() = 750
}

object huevoMixto {
  method tieneChcolateLeche() = true
  
  method tieneChocolateBlanco() = true
  
  method tieneChocolateAmargo() = false
  
  method calorias() = 900
}

object conejo {
  var peso = 5
  
  method tieneChocolateAmargo() = true
  
  method tieneChocolateBlanco() = false
  
  method calorias() = peso * 10
}

object blisterHuevitos {
  var huevitos = 14
  
  method huevosChocolateBlanco() = huevitos.div(5)
  
  method tieneChocolateAmargo() = false
  
  method tieneChocolateBlanco() = huevitos >= 5
  
  method calorias() = (huevitos * 100) + (self.huevosChocolateBlanco() * 150)
}

object matrioshka {
  var caloriasBase = 3000
  var property contieneHuevo = blisterHuevitos
  var property decoracion = flor
  
  method tieneChocolateAmargo() = true
  
  method tieneChocolateBlanco() = contieneHuevo.tieneChocolateBlanco()
  
  method calorias() = (caloriasBase + contieneHuevo.calorias()) + decoracion.calorias()
}

object arbol {
  method calorias() = 150
}

object flor {
  var property petalos = 7
  
  method calorias() = 100 * petalos
}