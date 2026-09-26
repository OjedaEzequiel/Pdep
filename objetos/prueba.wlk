import entrenador.*
object pepita {
  var energia = 100

  method energia() {
    return energia
  }

  method comer() {
    energia += 10
  }

  method volar() {
    energia -=10
  }
  method entrenar() {
    self.volar()
    self.volar()
  }
  method descansar() {
    self.comer()
    self.comer()
  }
}