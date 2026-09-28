import categorias.*
import presentismo.*
import resultados.*



object pepe{
    var puesto=desarrollador
    var bonoResultado = resultadoNulo
    var bonoPresentismo = bononioqui
    
    var anioAntiguedad=2
    var cantidadFaltas =0

    method sueldo(){
        return self.sueldoNeto()+
        self.bonoResultado()+
        self.bonoPresentismo()
    }
  method sueldoNeto() = 
    puesto.sueldo(self)

  method bonoResultado() = 
    bonoResultado.sueldo(self)

  method bonoPresentismo() =
    bonoPresentismo.sueldo(self)



    method aniosAntiguedad() = anioAntiguedad

    method aniosAntiguedad(algo){
        anioAntiguedad= algo
    }

    method cantidadFaltas()=cantidadFaltas
    
    method cantidadFaltas(algo){
        cantidadFaltas=algo
    }

    method puesto() = puesto

    method name(algo) {
      puesto=algo
    }
}