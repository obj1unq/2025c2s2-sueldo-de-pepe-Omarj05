object pepe {
    var categoria = categoriaCadete

    method categoriaActual() { return categoria } //getter

    method categoria(_categoria) { categoria = _categoria } //setter

    method sueldoNeto() { return categoria.sueldo() } //getter (pre calculo aqui, y no es necesario var sueldoNeto)
}

object categoriaCadete {
    var sueldo = 20000

    method sueldo() { return sueldo } //getter
    method sueldo(_sueldo) { sueldo = _sueldo } //setter 
}

object categoriaGerente {
    var sueldo = 15000

    method sueldo() { return sueldo } //getter
    method sueldo(_sueldo) { sueldo = _sueldo } //setter  
}
