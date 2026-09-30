class deposito {
  const formaciones = #{}

  method vagonesMasPesadosDeCadFormacion() {
    return formaciones.map{formacion => formacion.vagonMasPesado()}.asSet() // asSet() convierte una colección en un conjunto (Set).
  }

  method necesitaConductorExperimentado() {
    formaciones.any{formacion => formacion.esCompleja()}
      
  }

}

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
    method esEficiente(){
      return locomotoras.all({locomotora => locomotora.esEficiente()})
    }
    method puedeMoverse(){
      return self.arrastreUtilTotal() >= self.pesoMaximoTotalVagones()
    }
    method faltaParaMoverse() {
       
       return self.pesoMaximoTotalVagones() - self.arrastreUtilTotal() 
    }

    //Metodos auxiliares
    method pesoMaximoTotalVagones(){
      return vagones.sum({vagon => vagon.pesoMaximo()})
    }
    method arrastreUtilTotal(){
      return locomotoras.sum{locomotora => locomotora.arrastreUtil()}
    }
    method vagonMasPesado() {
      return vagones.max{vagon => vagon.pesoMaximo()}
    }
    method cantidadLocomotoras(){
      return locomotoras.size()
    }
    method tieneMasDe20Unidades(){
      return self.cantidadVagones() + self.cantidadLocomotoras() > 20
    }
    method pesoTotalVagones() {
      return vagones.sum{vagon => vagon.pesoMaximo()}
    }
    method pesoTotalLocomotoras(){
      return locomotoras.sum{locomotora => locomotora.peso()}
    }

    method pesoTotal() {
      return self.pesoTotalVagones() + self.pesoTotalLocomotoras()
    }
    method esCompleja(){
      return self.tieneMasDe20Unidades() || self.pesoTotal()>10000
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

  method peso() = peso

  method arrastreUtil() {
    return pesoMaximoDeArrastre - peso
  }
  method velocidadMaxima() = velocidadMaxima

  method esEficiente() {
    return self.arrastreUtil() >= peso *5
  }
}