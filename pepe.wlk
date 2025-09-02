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


object sofia {
  var categoria = categoriaCadete
    var bonoResultado = bonoNulo

    method sueldo() {
        return self.sueldoNeto() + self.bonoResultadoRecibido()
    }

    method categoriaActual() { return categoria } //getter

    method categoria(_categoria) { categoria = _categoria } //setter

    method sueldoNeto() { return categoria.sueldo() * 1.3 } //getter aumento del 30%

    method bonoResultadoRecibido() { return bonoResultado.bonoParaEmpleado(self) }

    method bonoResultado() { return bonoResultado } //getter
    method bonoResultado(_bonoResultado) { bonoResultado = _bonoResultado } //setter
}

object categoriaVendedor {
    var sueldo = 16000
    var aumentoPorMuchasVentas = false

    method sueldo() { return sueldo } //getter
    method sueldo(_sueldo) { sueldo = _sueldo } //setter 

    method activarAumentoPorMuchasVentas() {
        sueldo = sueldo * 1.25          //aumento del 25%
        aumentoPorMuchasVentas = true
    }

    method desactivarAumentoPorMuchasVentas() {
        sueldo = 16000
        aumentoPorMuchasVentas = false
    }

    method aumentoPorMuchasVentas() { return aumentoPorMuchasVentas } //getter
}

object categoriaMedioTiempo {
    var categoriaBase = categoriaCadete

    method categoriaBase(_categoriaBase) { categoriaBase = _categoriaBase } //setter

    method sueldoNeto() { return categoriaBase.sueldo() / 2 } //getter, sueldo a la mitad
}


object roque {
    var bonoResultado = bonoNulo

    method sueldo() {
        return self.sueldoNeto() + self.bonoResultadoRecibido() + 9000
    }

    method sueldoNeto() { return 28000 } //getter 

    method bonoResultadoRecibido() { return bonoResultado.bonoParaEmpleado(self)}

    method bonoResultado() { return bonoResultado } //getter
    method bonoResultado(_bonoResultado) { bonoResultado = _bonoResultado } //setter
}

object ernesto {
    var compañero = pepe
    var bonoPresentismo = bonoNulo
    const faltas = 0

    method sueldo() {
        return self.sueldoNeto() + self.bonoPresentismoRecibido()
    }

    method compañeroActual() { return compañero } //getter
    method compañero(_compañero) { compañero = _compañero } //setter

    method sueldoNeto() { return compañero.sueldoNeto() } //getter

    method bonoPresentismoRecibido() { return bonoPresentismo.bonoParaEmpleado(self) }

    method bonoPresentismo() { return bonoPresentismo } //getter
    method bonoPresentismo(_bonoPresentismo) { bonoPresentismo = _bonoPresentismo } //setter
}