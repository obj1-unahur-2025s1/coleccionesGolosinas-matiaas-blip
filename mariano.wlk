import golosinas.*
import gustos.*

object mariano {
  const bolsa = #{}
  method comprar(golosina) {
    bolsa.add(golosina)
  } 
  method desechar(golosina) {
    bolsa.remove(golosina)
  }
  method probarGolosinas() {
    return bolsa.forEach({
        golo => golo.darleMordisco()
    })
  }
  method hayGolosinasSinTACC() {
    return bolsa.any({
        golo => golo.esLibreDeGluten()
    })
  }
  method preciosCuidados() {
    return bolsa.all({
        golo => golo.precio() <= 10
    })
  }
  method golosinaDeSabor(sabor) {
    return bolsa.first({
        golo => golo.gusto() == sabor
    })
  }
  method golosinasDeSabor(sabor) {
    return bolsa.all({
        golo => golo.gusto() == sabor
    })
  }
  method sabores() {
    const gustos = #{frutilla, chocolate, naranja, vainilla}
    return gustos
  }
  method golosinaMasCara() {
    return bolsa.max({
        golo => golo.precio()
    })
  }
  method golosinasFaltantes(golosinasDeseadas) {
    return bolsa.intersection(golosinasDeseadas)
  }
  
}