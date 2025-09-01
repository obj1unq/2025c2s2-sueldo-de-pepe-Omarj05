object pepe {
	var sueldo = 0
    var categoria = cadete
    var faltas = 0
    var bonoPorPresentismoActual = null
    var bonoPorResultadosActual = null

    method sueldo(_sueldo) { sueldo = _sueldo } //setter
    method sueldoQueGana() { return sueldo } //getter

    method categoria(_categoria) { 
        categoria = _categoria 
        self.importeFinal()
    } //setter
    method categoria() { return categoria } //getter

    method importeFinal() {
      sueldo = categoria.sueldoNeto() + self.bonoFinal()
    }

    method bonoFinal() { 
        bonoPorPresentismo.empleado(self)
        bonoPorResultados.empleado(self)
        return 
            bonoPorPresentismo.importeDelBono_(bonoPorPresentismoActual) + 
            bonoPorResultados.importeDelBono_(bonoPorResultadosActual)
    }
    
    method cambiarBonoPorPresentismoA_(_bonoPorPresentismo) { 
        bonoPorPresentismoActual = _bonoPorPresentismo 
        self.importeFinal()
    } //setter

    method bonoPorPresentismoActual() { return bonoPorPresentismoActual } //getter

    method cambiarBonoPorResultadosA_(_bonoPorResultados) { 
        bonoPorResultadosActual = _bonoPorResultados 
        self.importeFinal()
    } //setter

    method bonoPorResultadosActual() { return bonoPorResultadosActual } //getter

    method faltas(_faltas) { 
        faltas = _faltas
        self.importeFinal()
    } //setter

    method faltasAlMomento() { return faltas } //getter

}

object bonoPorPresentismo {
    var categoriaDelEmpleado = null
    var empleado = null

    method bonoNormalPara_(_empleado) {
        if (_empleado.faltasAlMomento() == 0) { 
            return 2000 
        }
        else if (_empleado.faltasAlMomento() == 1) {
            return 1000 
        }
        else { 
            return 0 
        }
    }

    method bonoAjustePara_(_empleado) {
        if (_empleado.faltasAlMomento() > 0) { 
            return 0
        }
        else { 
            return 100
        }
    }

    method bonoDemagogicoPara_(_empleado) {
        if (categoriaDelEmpleado.sueldoNeto() < 18000) { 
            return 500
        }
        else { 
            return 300
        } 
    }

    method importeDelBono_(tipoDeBono) {
        if (tipoDeBono == "normal") {
            return self.bonoNormalPara_(empleado)
        }
        else if (tipoDeBono == "ajuste") {
            return self.bonoAjustePara_(empleado)
        }
        else if (tipoDeBono == "demagogico") {
            return self.bonoDemagogicoPara_(empleado)
        }
        else {
            return 0
        }
    }

    method empleado(_empleado) { 
        empleado = _empleado 
        self.categoriaDelEmpleado(_empleado.categoria())
    }
    method empleadoActual() { return empleado } //getter
    method categoriaDelEmpleadoActual() { return categoriaDelEmpleado } //getter
    method categoriaDelEmpleado(_categoria) { categoriaDelEmpleado = _categoria } //setter
}

object bonoPorResultados {
    var categoriaDelEmpleado = null
    var empleado = null

    method importeDelBono_(tipoDeBono) {
        
        if (tipoDeBono == "porcentaje") {
            categoriaDelEmpleado = empleado.categoria()
            return categoriaDelEmpleado.sueldoNeto() / 0.1
        }
        else if (tipoDeBono == "montoFijo") {
            return 800
        }
        else {
            return 0
        }
    }

    method empleado(_empleado) { 
        empleado = _empleado 
        self.categoriaDelEmpleado(_empleado.categoria())
    }
    method empleadoActual() { return empleado } //getter
    method categoriaDelEmpleadoActual() { return categoriaDelEmpleado } //getter
    method categoriaDelEmpleado(_categoria) { categoriaDelEmpleado = _categoria } //setter
}

object gerente {
    const sueldoNeto = 15000

    method sueldoNeto() { return sueldoNeto } //getter
}
object cadete {
    const sueldoNeto = 20000

    method sueldoNeto() { return sueldoNeto } //getter
}
