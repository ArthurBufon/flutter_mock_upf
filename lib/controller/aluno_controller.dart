import 'package:meuapp/model/aluno_model.dart';
import 'package:meuapp/model/aluno_repository.dart';

class AlunoController {

  // Injeção de dependências.
  AlunoRepository alunoRepository = AlunoRepository();
  List<AlunoEntity> alunosList = [];

  // Lista com todos os alunos.
  getAlunosList() async {
    alunosList = await alunoRepository.getAll();
    return alunosList;
  }
}
