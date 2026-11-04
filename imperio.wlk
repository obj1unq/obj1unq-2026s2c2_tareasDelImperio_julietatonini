import habitantes.*


class Tarea{

    method recursosProducidos(tiempo){
        return 50 * (tiempo - self.desgaste(tiempo)) * self.esfuerzo()
    }


    method desgaste(tiempo)


    method esfuerzo()    


}





class Siembra inherits Tarea{

    const property cultivo

    override method esfuerzo(){
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

    var property esEpocaDeLluvias = false      // object epocaDeLluvias y object EpocaSeca 


    override method jornadaNormal(){
        return 8
    }


    override method recursosProducidos(tiempo){
        if (esEpocaDeLluvias){
            return 0
        }
        return super(tiempo)
    }

}





class SiembraEnTerrazas inherits Siembra{


    override method jornadaNormal(){
        return 6
    }


    override method recursosProducidos(tiempo){
        return super(tiempo) * 3
    }
}





class Mensaje inherits Tarea {

    override method desgaste(tiempo){
        return tiempo / 4
    }


    override method esfuerzo(){
        return 1.4
    }

}





class MensajeImperial inherits Mensaje {

    override method esfuerzo(){
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



class Cultivo {

    const  property esfuerzoDeCultivo 

}  