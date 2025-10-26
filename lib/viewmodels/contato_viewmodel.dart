import 'package:flutter/material.dart';

import '../models/contato.dart';
import '../repositories/icontato_repository.dart';

class ContatoViewModel extends ChangeNotifier {
  final IContatoRepository _repository;

  ContatoViewModel(this._repository);

  List<Contato> get contatos => _repository.read();

  void create(Contato contato) {
    _repository.create(contato);
    notifyListeners();
  }

  void delete(String id) {
    _repository.delete(id);
    notifyListeners();
  }

  void update(Contato contato) {
    _repository.update(contato);
    notifyListeners();
  }
}
