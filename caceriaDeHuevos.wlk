import huevosDePascua.*
import chicos.*

object caceria {
  const huevosEscondidos = []
  
  method esconder(unHuevo) {
    huevosEscondidos.add(unHuevo)
  }
  
  // punto 1.
  method faltanEncontrar() = huevosEscondidos.size()
  
  method huevosEscondidos() = huevosEscondidos
  
  method HuevosDeChocolateBlanco() = huevosEscondidos.filter(
    { h => h.tieneChocolateBlanco() }
  )
  
  method HuevosDeChocolateBlancoPorEncontrar() = self.HuevosDeChocolateBlanco().size()

  // punto 2
  method noSeEncontroElHuevo(unHuevo) = huevosEscondidos.contains(unHuevo)
  
  // punto 3
  method elJugador_encontrar_(unJugador, unHuevo) {
    if (huevosEscondidos.contains(unHuevo)) unJugador.comer(unHuevo)
    huevosEscondidos.remove(unHuevo)
  }

  // punto 4 
  
  method primerHuevo() = huevosEscondidos.first()
  
  method elJugador_encontrarElPrimerHuevo(unJugador) {
    if (not self.huevosEscondidos().isEmpty()) {
      unJugador.comer(self.primerHuevo())
      huevosEscondidos.remove(self.primerHuevo())
    }
  }

  // punto 5

  // en hueevos restantes debo páasar caceria.huevosEscondidos()

   method elJugador_encontrarHuevosRestantes_(unJugador, huevosRestantes) {
    if (!huevosRestantes.isEmpty()) huevosRestantes.forEach({h=>unJugador.comer(h)}) 
     huevosRestantes.removeAll(huevosRestantes)
  }

   // punto 7
   method huevosChocolateBlancoSinEncontrar() = if (self.faltanEncontrar()>0) huevosEscondidos.filter({h=>h.tieneChocolateBlanco()})
   method huevoConMayorCalorias() = huevosEscondidos.max({h=>h.calorias()})
   method huevoDeMayorCaloriasSinEncontrar() = huevosEscondidos.huevoConMayorCalorias()

 



}