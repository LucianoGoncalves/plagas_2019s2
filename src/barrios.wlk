import elementos.*
import plagas.*

class Barrio {

    const elementos = #{}

    method esBueno(elemento) {
        return elemento.esBueno()
    }

    method esCopado() {
        return self.cantElementosBuenos() > self.cantElementosMalos()
    }

    method cantElementosBuenos() {
        return elementos.count({ elem => elem.esBueno() })
    }

    method cantElementosMalos() {
        return elementos.count({ elem => not elem.esBueno() })
    }

    method agregarAElem(elem) {
        elementos.add(elem)
    }

    method sacarElem(elem) {
        elementos.remove(elem)
    }

    method agregarMuchosElem(muchosElem) {
        elementos.addAll(muchosElem)
    }

}

