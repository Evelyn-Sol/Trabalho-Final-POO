package model

class Gerenciamento() {
    val cidadaos = mutableListOf<Cidadao>()
    val agentes = mutableListOf<AgenteSaude>()
    val visitas = mutableListOf<Visita>()
    val alertas = mutableListOf<Alerta>()

    fun adicionarCidadao(novoCidadao: Cidadao) {
        cidadaos.add(novoCidadao)
    }
    fun listarCidadaos(){
        for(cidadao in cidadaos){
            cidadao.exibirDados()
        }
    }
}