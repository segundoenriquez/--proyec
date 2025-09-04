class Alimento {
    var property hambre = 0
    var property felicidad = 0
}

const zanahoria = new Alimento(hambre = 10, felicidad = 2)
const comidaParaPerro = new Alimento(hambre = 20, felicidad = 5)
const carne = new Alimento(hambre = 30, felicidad = 10)
const pescado = new Alimento(hambre = 25, felicidad = 15)

class Mascota {
    var hambre = 50
    var sed = 50
    var felicidad = 50
    var cansancio = 50

    method limitar(valor) {
        if (valor > 100) return 100
        if (valor < 0) return 0
        return valor
    }

    method comer(alimento) {
        hambre = self.limitar(hambre - alimento.hambre())
        felicidad = self.limitar(felicidad + alimento.felicidad())
    }

    method beber() {
        sed = self.limitar(sed - 10)
        felicidad = self.limitar(felicidad + 5)
    }

    method jugarCon(otraMascota) {
        felicidad = self.limitar(felicidad + 15)
        cansancio = self.limitar(cansancio + 10)
        otraMascota.recibirJuegoDe(self)
    }

    method recibirJuegoDe(otraMascota) {
        felicidad = self.limitar(felicidad + 15)
        cansancio = self.limitar(cansancio + 10)
    }

    method pelearCon(otraMascota) {
        felicidad = self.limitar(felicidad - 10)
        cansancio = self.limitar(cansancio + 10)
        otraMascota.defenderseDe(self)
    }

    method defenderseDe(otraMascota) {
        felicidad = self.limitar(felicidad - 10)
        cansancio = self.limitar(cansancio + 10)
    }

    method dormir() {
        cansancio = self.limitar(cansancio - 30)
    }
}

class Perro inherits Mascota {
    override method comer(alimento) {
        if (alimento == pescado) {
            hambre = self.limitar(hambre - alimento.hambre())
            felicidad = self.limitar(felicidad + 2)
        } else {
            perro.comer(alimento)
        }
    }
}


class Gato inherits Mascota {
    override method comer(alimento) {
        if (alimento == pescado) {
            hambre = self.limitar(hambre - alimento.hambre())
            felicidad = self.limitar(felicidad + alimento.felicidad())
        } else {
            gato.comer(alimento)
        }
    }
}


const perro = new Perro()
const gato = new Gato()
