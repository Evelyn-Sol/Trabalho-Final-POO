import 'package:flutter/material.dart';
import 'package:sistema_saude/views/telaCadastroAgente.dart';
import 'package:sistema_saude/views/telaCadastroCidadao.dart';
import 'package:sistema_saude/views/telaAlertas.dart';
import 'package:sistema_saude/views/telaListaAgente.dart';
import 'package:sistema_saude/views/telaListaCidadao.dart';
import 'package:sistema_saude/views/telaListaVisita.dart';
import 'package:sistema_saude/views/telaRegistroVisita.dart';

class Telainicial extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text("Gerencia ACS"),
    centerTitle: true,
  ),
  body: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      children: [
        Text("Menu Principal",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        SizedBox(height: 20),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Telacadastrocidadao(),
              ),
            );
          },
          child: Text("Cadastrar Cidadãos"),
        ),
         ElevatedButton(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Telalistacidadao(),
              ),
            );
          },
          child: Text("Listar Cidadãos"),
        ),
        SizedBox(height: 20,),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Telacadastroagente(),
              ),
            );
          },
          child: Text("Cadastrar Agentes"),
        ),
         ElevatedButton(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Telalistaagente(),
              ),
            );
          },
          child: Text("Listar Agentes"),
        ),
        SizedBox(height: 20,),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Telaregistrovisita(),
              ),
            );
          },
          child: Text("Registrar Visitas"),
        ),
         ElevatedButton(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Telalistavisita(),
              ),
            );
          },
          child: Text("Listar Visitas"),
        ),
        SizedBox(height: 20,),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Telaalertas(),
              ),
            );
          },
          child: Text("Alertas"),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
    ),
  ),
);
  }
}