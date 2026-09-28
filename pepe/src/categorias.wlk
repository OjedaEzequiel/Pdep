object desarrollador {
    method sueldo(empledo) = 1000 + 25 * empledo.aniosAntiguedad()
  
}

object manager  {
  method sueldo(empleado) = 1500+50 * empleado.aniosAntiguedad()
}

object gerente  {
  method sueldo(empleado) = 2500+100 * empleado.aniosAntiguedad()
}