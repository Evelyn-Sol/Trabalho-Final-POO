package model

open class Pessoa (var nome: String = "",
                   var cpf: String = "",
                   var idade: Int = 0){
    open fun exibirDados(){
        println(nome)
        println(cpf)
        println(idade)
    }
}

