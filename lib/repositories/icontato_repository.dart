import '../models/contato.dart';

abstract class IContatoRepository {
  void create(Contato model);

  List<Contato> read();

  void update(Contato model);

  void delete(String id);
}
