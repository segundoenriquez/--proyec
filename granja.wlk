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