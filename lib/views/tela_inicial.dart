import 'package:flutter/material.dart';
import 'package:sistema_saude/views/tela_cadastro_agente.dart';
import 'package:sistema_saude/views/tela_cadastro_cidadao.dart';
import 'package:sistema_saude/views/tela_alertas.dart';
import 'package:sistema_saude/views/tela_lista_agente.dart';
import 'package:sistema_saude/views/tela_lista_cidadao.dart';
import 'package:sistema_saude/views/tela_lista_visita.dart';
import 'package:sistema_saude/views/tela_registro_visita.dart';

class Telainicial extends StatelessWidget {
  const Telainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Gerencia ACS"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.local_hospital, size: 80, color: Colors.blue),
                SizedBox(height: 10),
                Text(
                  "Gerencia ACS",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sistema de gestão em saúde",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 15),

                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person_add, size: 40, color: Colors.blue,),
                    title: Text("Cadastro de Cidadãos"),
                    subtitle: Text("Cadastrar os cidadãos"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Telacadastrocidadao(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.people, size: 40, color: Colors.blue,),
                    title: Text("Lista de Cidadãos"),
                    subtitle: Text("Listar todos os cidadãos cadastrados"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Telalistacidadao(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.medical_services, size: 40, color: Colors.green,),
                    title: Text("Cadastro de Agentes"),
                    subtitle: Text("Cadastrar agentes de saúde"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Telacadastroagente(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),

                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.health_and_safety, size: 40, color: Colors.green,),
                    title: Text("Listar Agentes"),
                    subtitle: Text("Listar todos os agentes cadastrados"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Telalistaagente(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.event_note, size: 40, color: Colors.purple,),
                    title: Text("Registrar Visitas"),
                    subtitle: Text("Registrar as visitas realizadas"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Telaregistrovisita(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.list_alt, size: 40, color: Colors.purple,),
                    title: Text("Listar Visitas"),
                    subtitle: Text("Listar todas as visitas realizadas"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Telalistavisita(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.orange,
                  child: ListTile(
                    leading: Icon(Icons.warning_amber, size: 40, color: Colors.black,),
                    title: Text("Alertas"),
                    subtitle: Text("Cidadãos Prioritários"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Telaalertas()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
