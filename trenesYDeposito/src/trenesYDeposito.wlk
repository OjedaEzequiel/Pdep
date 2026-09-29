class Formacion{
    const vagones = []
    const locomotoras = []

    method agregarVagon() {
      
    }
    method agregarLocomotora() {
      
    }
    method cantidadVagones() {
      
    }
    method cantidadMaximaDePasajeros() {
      
    }
    method cantidadVagonesLivianos() {
      
    }
    method velocidadMaxima() {
      
    }
}

class VagonPasajero{
    const largo
    const ancho

    method cantPasajeros() {
        return if (ancho <= 2.5) {
            largo * 8
        } else {
            largo * 10
        }
    }
    method pesoMaximo() {
        return self.cantPasajeros() * 80
    }

    method esLiviano() {
      self.pesoMaximo() <2500
    }
}
class VagonCarga{
    const cargaMaxima

    method pesoMaximo() {
        return cargaMaxima+160
    }
    method cantPasajeros(){
        return 0
    }
    method esLiviano() {
      self.pesoMaximo() <2500
    }
}

class Locomotora {
  const peso
  const pesoMaximoDeArrastre
  const velocidadMaxima

  method arrastreUtil() {
    return pesoMaximoDeArrastre - peso
  }
  method velocidadMaxima() = velocidadMaxima
}