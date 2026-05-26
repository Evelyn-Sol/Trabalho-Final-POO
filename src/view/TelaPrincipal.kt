package view

import java.awt.FlowLayout
import javax.swing.JButton
import javax.swing.JFrame

fun TelaPrincipal() {
    val JanelaInicial = JFrame("Sistema Inicial")
    JanelaInicial.setSize(400,500)
    JanelaInicial.defaultCloseOperation = JFrame.EXIT_ON_CLOSE

    JanelaInicial.layout = (FlowLayout())

    val BotaoGerenciar = JButton("Gerenciar")
    val BotaoVisitas = JButton("Visitas")
    JanelaInicial.add(BotaoVisitas)
    JanelaInicial.add(BotaoGerenciar)

    BotaoGerenciar.addActionListener {
        telaCadastro()
    }
    BotaoVisitas.addActionListener {
        TelaVisitas()
    }
    JanelaInicial.isVisible = true

}