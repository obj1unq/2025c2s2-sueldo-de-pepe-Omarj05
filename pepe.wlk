object pepe {
    var categoria = categoriaCadete
    var bonoResultado = bonoNulo
    var bonoPresentismo = bonoNulo
    var faltas = 0

    method sueldo() {
        return self.sueldoNeto() + self.bonoResultadoRecibido() + self.bonoPresentismoRecibido()
    }

    method categoriaActual() { return categoria } //getter

    method categoria(_categoria) { categoria = _categoria } //setter

    method sueldoNeto() { return categoria.sueldo() } //getter (pre calculo aqui, y no es necesario var sueldoNeto

    method bonoResultadoRecibido() { return bonoResultado.bonoParaEmpleado(self)}
    method bonoPresentismoRecibido() { return bonoPresentismo.bonoParaEmpleado(self) }

    method bonoResultado() { return bonoResultado } 
    method bonoResultado(_bonoResultado) { bonoResultado = _bonoResultado }

    method bonoPresentismo() { return bonoPresentismo }
    method bonoPresentismo(_bonoPresentismo) { bonoPresentismo = _bonoPresentismo }

    method faltas() { return faltas } //getter
    method faltas(_faltas) { faltas = _faltas } //setter
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
    
    method bonoParaEmpleado(empleado) {
        return empleado.sueldoNeto() * 0.1
    }
}

object bonoResultadoMontoFijo {
    method bonoParaEmpleado(empleado) {
        return 800
    }
}

object bonoNulo {
    method bonoParaEmpleado(empleado) {
        return 0
    }
}

object bonoPresentismoNormal {
    method bonoParaEmpleado(empleado) {
        if (empleado.faltas() == 0) {
            return 2000
        }
        else if (empleado.faltas() == 1) {
            return 1000
        }
        else {
            return 0
        }
    }
}

object bonoPresentismoAjuste {
    method bonoParaEmpleado(empleado) {
        if (empleado.faltas() == 0) {
            return 100
        }
        else {
            return 0
        }
    }
}

object bonoPresentismoDemagogico {
    method bonoParaEmpleado(empleado) {
        if (empleado.sueldoNeto() < 18000) {
            return 500
        }
        else {
            return 300
        }
    }
}
