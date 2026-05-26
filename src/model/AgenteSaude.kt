package model

class AgenteSaude(nome:String,cpf:String,idade:Int, var area:Int = 0): Pessoa(nome,cpf,idade) {
    override fun exibirDados() {
        super.exibirDados()
        println(area)
    }
}