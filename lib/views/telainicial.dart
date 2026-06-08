import 'package:flutter/material.dart';
import 'package:sistema_saude/views/telaCadastroAgente.dart';
import 'package:sistema_saude/views/telaCadastroCidadao.dart';
import 'package:sistema_saude/views/telaAlertas.dart';
import 'package:sistema_saude/views/telaRegistroVisita.dart';

class Telainicial extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Gerencia ACS")),
    body: Column(children: [Text("Menu Principal"), SizedBox(height: 20), 
    ElevatedButton(onPressed:(){Navigator.push(context, MaterialPageRoute (builder: (context) => Telacadastrocidadao(),));} ,child: Text("Gerenciar Cidadãos")), 
    ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute (builder: (context) => Telacadastroagente(),));}, child: Text("Gerenciar Agentes")),
    ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute (builder: (context) => Telaregistrovisita(),));}, child: Text("Registrar Visitas")), 
    ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute (builder: (context) => Telaalertas(),));}, child: Text("Alertas"))],mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,));
  }
}