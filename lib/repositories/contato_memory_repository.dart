import 'icontato_repository.dart';
import '../models/contato.dart';

class ContatoMemoryRepository extends IContatoRepository {
  final List<Contato> _contatos = [];

  @override
  void create(Contato model) {
    _contatos.add(model);
  }

  @override
  void delete(String id) {
    _contatos.removeWhere((contato) => contato.id == id);
  }

  @override
  List<Contato> read() {
    return List.unmodifiable(_contatos);
  }

  @override
  void update(Contato model) {
    var contato = _contatos.singleWhere((e) => e.id == model.id);
    contato.nome = model.nome;
    contato.email = model.email;
  }
}
