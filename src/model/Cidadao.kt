package model

class Cidadao(nome: String, cpf: String, idade: Int,var endereco:String="", var telefone:String=""): Pessoa(nome, cpf, idade){
    fun verificarPrioridade():Boolean{
        val condicao: Boolean = idade>=60
    return condicao}

    override fun exibirDados() {
        super.exibirDados()
        println(endereco)
        println(telefone)
    }
}