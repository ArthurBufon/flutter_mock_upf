import 'package:meuapp/model/aluno_model.dart';
import 'package:meuapp/utils/constantes.dart';
import 'package:http/http.dart' as http;

class AlunoRepository {
  List<AlunoEntity> listaAlunos = [];
  final url = Uri.parse('$urlBaseApi/alunos');

  Future<List<AlunoEntity>> getAll() async {
    final response = await http.get(url);
    return listaAlunos;
  }
}
