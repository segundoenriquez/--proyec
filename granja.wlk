class Animal{
  var peso = 0
  var vacunado = false
  var hambre = true
  var sed = true
  var enfermo = false

    method comer(cantComida) {
        hambre = false
    }
    method beber() {
        sed = false
    }

    method vacunado() {
        return vacunado
    }
    method enfermo() {
        return enfermo
    }
    method peso() {
        return peso
    }
    method TieneHambre() {
        return hambre
    }
    method TieneSed() {
        return sed
        }

}
class Vaca inherits Animal (peso = 50) {

    method tieneHambre() {
        if (peso < 400) {
        hambre = true
    }

    }

    override method beber(){
        peso = peso - 1
    }
    
    override method comer(cantComida) {
        peso = peso + cantComida/2
        sed = true
    }
        method caminar() {
        peso = peso - 3
    }

    method vacunar(){
        if (!vacunado){
            vacunado = true
            return "vacunada"
        } else {
            return "La vaca ya esta vacunada"
        }
        }
}
class Chancho inherits Animal (peso = 30) {
    var contadorComida = 0
    var contadorVacunas = 0
    method tieneHambre() {
        if (peso < 200) {
        hambre = true
    }

    }

    override method beber(){
        peso = peso - 1
    }
    
    override method comer(cantComida) {
        contadorComida = contadorComida + 1
        peso = peso + cantComida - 5
        if (contadorComida >= 3){
            sed = true
        }

    }
        method caminar() {
        peso = peso - 2
    }

    method vacunar(){
    contadorVacunas = contadorVacunas + 1
    return "vacuna aplicada numero " + contadorVacunas
        }
}
class Gallina inherits Animal(peso = 4){

 override method TieneHambre() {
    return true
 }
 override method TieneSed() {
    return false
 }
 override method vacunado() {
    return false
 }
    method vacunar(){1
    return "No es posible vacunar a la gallina "
        }
}
