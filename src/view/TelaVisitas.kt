package view

import java.awt.GridLayout
import javax.swing.JButton
import javax.swing.JFrame
import javax.swing.JLabel
import javax.swing.JPanel
import javax.swing.JTextField
import javax.swing.WindowConstants.EXIT_ON_CLOSE

fun TelaVisitas (){
    val janela = JFrame("Sistema de Visitas")
    janela.setSize(500, 500)
    janela.setLocationRelativeTo(null)
    janela.defaultCloseOperation = EXIT_ON_CLOSE

    val painel = JPanel()
    painel.layout = GridLayout(3, 2)
    janela.add(painel)

    val BotaoRegistra = JButton("Registrar Visita")
    painel.add(BotaoRegistra)
    val BotaoLista = JButton("Listar Visitas")
    painel.add(BotaoLista)
    val BotaoAtraso = JButton("Visitas Atrasadas")
    painel.add(BotaoAtraso)

    janela.isVisible = true
}