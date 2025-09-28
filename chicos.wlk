import huevosDePascua.*

object ana {
  var property estaEnferma = false
  const huevosComidos = []
  
  method comer(unHuevo) {
    huevosComidos.add(unHuevo)
  }
  
  method comioMasDe5000K() = huevosComidos.sum({ b => b.calorias() }) >= 5000
  
  method comioChocolateBlanco() = huevosComidos.any(
    { b => b.tieneChocolateBlanco() }
  )
  
  method estaEnferma() = self.comioChocolateBlanco() || self.comioMasDe5000K()
}

object jose {
  var property ultimoHuevoComido = huevoRepostero
  
  method comer(unHuevo) {
    ultimoHuevoComido = unHuevo
  }
  
  method estaEnferma() = ultimoHuevoComido.tieneChocolateAmargo()
}

object tito {
    method estaEnferma() =false
    method comer(unHuevo) {
      
    }

  
}