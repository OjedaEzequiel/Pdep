class Formacion{
    const vagones = []
    const locomotoras = []

    method agregarVagon(vagon) {
        vagones.add(vagon)
    }
    method agregarLocomotora(locomotora) {
      locomotoras.add(locomotora)
    }
    method cantidadVagones() {
      return vagones.size()
    }
    method cantidadMaximaDePasajeros() {
      return vagones.sum{ vagon => vagon.cantPasajeros()}
    }
    method cantidadVagonesLivianos() {
        const vagonesLianos=vagones.filter{vagon => vagon.esLiviano()}
        
        return  vagonesLianos.size()
    }
    method velocidadMaxima() {
      const locomotoraMasLenta= locomotoras.min{locomotora => locomotora.velocidadMaxima()}
      return locomotoraMasLenta.velocidadMaxima()
    }
}

class VagonPasajero{
    const largo
    const ancho

    method  cantPasajeros(){
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