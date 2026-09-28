object resultadoSTI {
  method sueldo(empleado) = 0.25 * empleado.sueldoNeto()
}

//Un bono fijo de quince dólares más un dólar por antigüedad.
object resulltadoFijo {
  method sueldo(persona) = 500 + persona.aniosAntiguedad()
}
//No ofrecer bono.
object resultadoNulo {
  method sueldo() = 0
}