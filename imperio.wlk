import habitantes.*


class Tarea{

    method recursosProducidos(tiempo, cultivo){
        return 50 * (tiempo - self.desgaste(tiempo)) * self.esfuerzo(cultivo)
    }


    method desgaste(tiempo)


    method esfuerzo(cultivo)    


}





class Siembra inherits Tarea{

    override method esfuerzo(cultivo){
        return cultivo.esfuerzoDeCultivo()
    }


    override method desgaste(tiempo){
        if(tiempo <= self.jornadaNormal()){
            return 1
        } else {
            return 1 + (tiempo - self.jornadaNormal())
        }
    }


    method jornadaNormal()

}





class SiembraEnValle inherits Siembra{

    var property esEpocaDeLluvias = false


    override method jornadaNormal(){
        return 8
    }


    override method recursosProducidos(tiempo, cultivo){
        if (esEpocaDeLluvias){
            return 0
        }
        return super(tiempo, cultivo)
    }

}





class SiembraEnTerrazas inherits Siembra{


    override method jornadaNormal(){
        return 6
    }


    override method recursosProducidos(tiempo, cultivo){
        return super(tiempo, cultivo) * 3
    }
}





class Mensaje inherits Tarea {

    override method desgaste(tiempo){
        return tiempo / 4
    }


    override method esfuerzo(cultivo){
        return 1.4
    }

}





class MensajeImperial inherits Mensaje {

    override method esfuerzo(cultivo){
        return 1.8
    }


    override method desgaste(tiempo){    
        if (super(tiempo) - 2 < 1){
            return 1
        } else {
            return super(tiempo) - 2
        }
    }
}