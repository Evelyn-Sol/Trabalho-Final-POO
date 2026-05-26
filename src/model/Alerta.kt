package model

class Alerta(val cidadao: Cidadao, var mensagem: String="", var prioridade:Boolean = true, var visita: Visita) {
    fun exibirAlerta(){
        if(prioridade == true){
            println("Cidadão Prioritário")
        }
        val visitaDias: Int = visita.dataVisita.toInt()
        if(visitaDias>30){
            println("Visita Atrasada")
        }
    }
}