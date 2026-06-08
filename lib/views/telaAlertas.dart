import 'package:flutter/material.dart';
import 'package:sistema_saude/models/Alertas.dart';
import 'package:sistema_saude/models/Visita.dart';
import 'package:sistema_saude/models/dados.dart';

class Telaalertas extends StatefulWidget{
  @override
  State<Telaalertas> createState(){
    return _TelaAlertasState();
  }
}
class _TelaAlertasState extends State<Telaalertas>{
  List<String> mensagens = [];

  void carregarVisitas(){
    mensagens.clear();
    for(Visita visita in gerenciamento.visitas){
      Alertas alerta = Alertas(
        visita.cidadao,
        visita,
      );
      mensagens.add(alerta.verificarAlerta());
    }
  }

  @override
  void initState(){
    super.initState();
    carregarVisitas();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
    carregarVisitas();
  });
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Alertas"),
      ),
      body: ListView.builder(itemCount: mensagens.length, itemBuilder: (context,index){
        return ListTile(
          title: Text(mensagens[index]),
        );
      }),
    );
  }
}