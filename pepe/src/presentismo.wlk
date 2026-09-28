object bonoNulo {
  method sueldo(empleado) = 0
}

object bonoPorFaltas {
  method sueldo(empleado) {
    const cantidadFaltas = empleado.cantidadFaltas()
   return if(cantidadFaltas==0){
    100
    }
    else if(cantidadFaltas==1){
        50 - empleado.aniosAntiguedad()
    }
    else{
        0
    }
  }
}

object bononioqui {
  method sueldo(empleado) = 2** empleado.cantidadFaltas()
}