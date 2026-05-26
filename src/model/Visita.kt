package model

class Visita(val cidadao: Cidadao, val agenteSaude: AgenteSaude, var dataVisita:String = "", var descricao:String = "") {
    fun exibirVisita(){
        println(cidadao.nome)
        println(cidadao.cpf)
        println(agenteSaude.nome)
        println(agenteSaude.area)
        println(descricao)
        println(dataVisita)
    }
}