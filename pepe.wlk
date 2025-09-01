object pepe {
    var categoria = categoriaCadete
    var bonoResultado = bonoResultadoNulo
    var bonoPresentismo = bonoPresentismoNulo

    method categoriaActual() { return categoria } //getter

    method categoria(_categoria) { categoria = _categoria } //setter

    method sueldoNeto() { return categoria.sueldo() } //getter (pre calculo aqui, y no es necesario var sueldoNeto

    method bonoResultadoRecibido() { return bonoResultado.bonoResultadoPara_(self)}
    method bonoPresentismoRecibido() { return bonoPresentismo.bonoPresentismoPara_(self) }

    method bonoResultado() { return bonoResultado } 
    method bonoResultado(_bonoResultado) { bonoResultado = _bonoResultado }

    method bonoPresentismo() { return bonoPresentismo }
    method bonoPresentismo(_bonoPresentismo) { bonoPresentismo = _bonoPresentismo }
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

object bonoResultadoPorcentaje {
    
    method bonoResultadoPara_(empleado) {
        return empleado.sueldoNeto() * 0.1
    }
}

object bonoResultadoMontoFijo {
    method bonoResultadoPara_(empleado) {
        return 800
    }
}

object bonoResultadoNulo {
    method bonoResultadoPara_(empleado) {
        return 0
    }
}

object bonoPresentismoNormal {
    method bonoPresentismoPara_(empleado) {
        return 
    }
}

object bonoPresentismoAjuste {

}

object bonoPresentismoDemagogico {

}

object bonoPresentismoNulo {

}