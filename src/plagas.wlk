import elementos.*

class Plagas {

    var property poblacion = 0

    method transmiteEnfermedades() {
        return poblacion >= 10
    }

    /*  nivelDeDanio no es polimorfico de Plaga con las otras clases de plaga. Solucion, hacer el metodo   
     *     method nivelDeDanio() {
     *         return poblacion
     *     }
     */
    method atacaA(elemento) {
        elemento.recibeAtaque(self)
        poblacion += self.porcentajeRedondeado(poblacion)
    }

    method porcentaje() {
        return 0.1
    }

    method porcentajeRedondeado(num) {
        return if ((num * self.porcentaje()) >= ((num * self.porcentaje()).truncate(0) + 0.5)) {
            (num * self.porcentaje()).roundUp(0)
        } else {
            (num * self.porcentaje()).truncate(0)
        }
    }

}

class Cucarachas inherits Plagas {

    var property pesoPromedio = 8

    method nivelDeDanio() {
        return poblacion * 0.5
    }

    override method transmiteEnfermedades() {
        return super() and pesoPromedio >= 10
    }

    override method atacaA(elemento) {
        super(elemento)
        pesoPromedio += 2
    }

}

class Pulgas inherits Plagas {

    method nivelDeDanio() {
        return poblacion * 2
    }

}

class Garrapatas inherits Pulgas {

    override method porcentaje() {
        return super() + 0.1
    }

}

class Mosquitos inherits Plagas {

    method nivelDeDanio() {
        return poblacion
    }

    override method transmiteEnfermedades() {
        return super() and poblacion % 3 == 0
    }

}

