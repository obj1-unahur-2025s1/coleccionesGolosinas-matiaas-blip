import gustos.*

object bombon {
    var peso = 15
  method precio() = 5
  method peso() =  peso
  method gusto() = frutilla
  method esLibreDeGluten() = true
  method darleMordisco() {
    peso = peso * 0.2 + 1
  }
}

object alfajor {
  var peso = 300
  method precio() = 12
  method peso() =  peso
  method gusto() = chocolate
  method esLibreDeGluten() = false
  method darleMordisco() {
    peso = peso * 0.2 
  }
}

object caramelo {
  var peso = 5
  method precio() = 1
  method peso() =  peso
  method gusto() = frutilla
  method esLibreDeGluten() = true
  method darleMordisco() {
    peso =-1
  }
}

object chupetin {
  var peso = 7
  method precio() = 2
  method peso() =  peso
  method gusto() = naranja
  method esLibreDeGluten() = true
  method darleMordisco() {
    if (peso < 2) {
        peso = peso * 0.1
    }
  }
}

object oblea {
  var peso = 250
  method precio() = 5
  method peso() =  peso
  method gusto() = vainilla
  method esLibreDeGluten() = false
  method darleMordisco() {
    if (peso > 70) {
        peso = peso / 2
    } else {
        peso = peso / 4
    }
  }
}

object chocolatin {
   var peso = 0
   var pesoInicial = 0
  method precio() = peso * 0.5
  method peso() =  peso
  method gusto() = frutilla
  method esLibreDeGluten() = false
  method darleMordisco() {
    peso =-2
  }
  method elegirGramos(cantidad) {
    pesoInicial = cantidad
  }
}

object golosinaBaniada {
  const golosinaBase = chocolatin
  method precio() {
    golosinaBase.precio() + 2
  }
  method peso() {
    golosinaBase.peso() + 4
  }
  method gusto() = golosinaBase.gusto()
  method esLibreDeGluten() = golosinaBase.esLibreDeGluten()
  method darleMordisco() {
    golosinaBase.darleMordisco() - 2
  }
}

object pastillaFruti {
  var peso = 5
  var precio = 7
  const gusto = frutilla
  method precio() = precio
  method peso() =  peso
  method gusto() = gusto
  method esLibreDeGluten() {
    return self.precio() == 7
  }
  method darleMordisco() {
    peso =-1
    gusto.cambiarGusto()
  }
  method seQuiereLibreDeGluten() {
    precio = 7
  }
}

