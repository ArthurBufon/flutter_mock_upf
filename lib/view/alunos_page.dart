import 'package:flutter/material.dart';
import 'package:meuapp/controller/aluno_controller.dart';

class AlunosPage extends StatefulWidget {
  const AlunosPage({super.key});

  @override
  State<AlunosPage> createState() => _AlunosPageState();
}

class _AlunosPageState extends State<AlunosPage> {

  // Lista de alunos.
  List list = [];

  // Injeção de dependências.
  AlunoController alunoController = AlunoController();

  // Busca todos os alunos.
  getAlunos() async{
    alunoController.getAlunosList();
  }

  @override
  void initState(){
    super.initState();
    list = getAlunos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: list,
        builder: (BuildContext context, AsyncSnapshot),
      ),
    );
  }
}