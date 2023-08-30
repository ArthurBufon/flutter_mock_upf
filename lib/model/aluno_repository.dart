import 'dart:convert';
import 'package:meuapp/model/aluno_model.dart';
import 'package:meuapp/utils/constantes.dart';
import 'package:http/http.dart' as http;

class AlunoRepository {
  List<AlunoEntity> listaAlunos = [];
  final url = Uri.parse('$urlBaseApi/alunos');

  // Busca todos os alunos.
  Future<List<AlunoEntity>> getAll() async {
    final response = await http.get(url);

    // Sucesso na requisição
    if (response.statusCode == 200) {
      // Decodifica alunos que está em json.
      final list = jsonDecode(response.body) as List;

      // Transforma lista em key value.
      for (var aluno in list) {
        listaAlunos.add(
          AlunoEntity.mapToEntity(aluno),
        );
      }
    }

    return listaAlunos;
  }
}
