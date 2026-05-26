package view

import model.Gerenciamento
import model.Cidadao
import javax.swing.JFrame
import javax.swing.JLabel
import javax.swing.JPanel
import javax.swing.JTextField
import javax.swing.WindowConstants.EXIT_ON_CLOSE
import java.awt.*

fun telaCadastroCidadao(gerenciamento: Gerenciamento) {
    val janela = JFrame("Sistema de Cadastro")
    janela.setSize(500, 500)
    janela.setLocationRelativeTo(null)
    janela.defaultCloseOperation = EXIT_ON_CLOSE

    val painel = JPanel()
    painel.layout = GridLayout(3, 2)
    janela.add(painel)

    val labelNome = JLabel("Nome de Cadastro")
    val labelDataNascimento = JLabel("Idade")
    val labelCPF = JLabel("CPF de Cadastro")
    val labelEndereco = JLabel("Endereco")
    val labelTelefone = JLabel("Telefone")
    val campoNome = JTextField(20)
    val campoDataNascimento = JTextField(20)
    val campoCPF = JTextField(20)
    val campoEndereco = JTextField(20)
    val campoTelefone = JTextField(20)
    painel.add(labelNome)
    painel.add(campoNome)
    painel.add(labelDataNascimento)
    painel.add(campoDataNascimento)
    painel.add(labelCPF)
    painel.add(campoCPF)
    painel.add(labelEndereco)
    painel.add(campoEndereco)
    painel.add(labelTelefone)
    painel.add(campoTelefone)
    val novoCidadao = Cidadao(
        campoCPF.text,
        campoNome.text,
        campoDataNascimento.text.toInt()
    )
    janela.isVisible = true
}