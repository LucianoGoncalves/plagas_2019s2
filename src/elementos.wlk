import plagas.*

class Hogar {

    var property nivelMugre = 0
    var property confort = 0

    method esBueno() {
        return nivelMugre <= (confort * 0.5)
    }

    method recibeAtaque(plaga) {
        nivelMugre += plaga.nivelDeDanio()
    }

}

class Huerta {

    var property capaProduc = 0
    var property nivelProduc = 20

    method esBueno() {
        return capaProduc > nivelProduc
    }

    method recibeAtaque(plaga) {
        capaProduc -= (plaga.nivelDeDanio() * 0.1)
        if (plaga.transmiteEnfermedades()) {
            capaProduc -= 10
        }
    }

}

class Mascota {

    var property nivelSalud = 100

    method esBueno() {
        return nivelSalud > 250
    }

    method recibeAtaque(plaga) {
        if (plaga.transmiteEnfermedades()) {
            nivelSalud -= plaga.nivelDeDanio()
        }
    }

}

