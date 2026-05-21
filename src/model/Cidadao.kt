package model

class Cidadao {
    lateinit var nome: String
    lateinit var datanasc: String
    lateinit var cpf: String
    val cidadaos = mutableListOf<Cidadao>()

    fun adicionar(){
        println("Digite o nome:")
        val nomeD = readln()
        println("Digite a data de nascimento:")
        val datanascD = readln()
        println("Digite o CPF:")
        val cpfD = readln()

        val novoCidadao = Cidadao()
        novoCidadao.nome = nomeD
        novoCidadao.datanasc = datanascD
        novoCidadao.cpf = cpfD
        cidadaos.add(novoCidadao)
    }

    fun remover(){
        val find = readln()
        val removido = cidadaos.removeIf{ it.cpf == find }
        if(removido){
            println("Cidadão removido com sucesso!")
        } else {
            println("Cidadão não encontrado!")
        }

    }

    fun atualizar(){
        val find = readln()
        val achado = cidadaos.find { it.cpf == find }
        if(achado != null){
            println("Cidadão encontrado!")
            println("Digite o novo nome:")
            achado.nome = readln()
            println("Digite a nova data de nascimento:")
            achado.datanasc = readln()
        }
    }

    fun listar(){
        for (cidadao in cidadaos){
            println(cidadao.nome)
            println(cidadao.datanasc)
            println(cidadao.cpf)
        }
    }
}