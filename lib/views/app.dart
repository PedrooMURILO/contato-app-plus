import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../repositories/contato_memory_repository.dart';
import '../viewmodels/contato_viewmodel.dart';
import 'lista.dart';
import 'novo.dart';
import 'edita.dart';
import 'login.dart';
import 'registro.dart';

class ContatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContatoViewModel(ContatoMemoryRepository()),
      child: MaterialApp(
        routes: {
          '/lista': (context) => ListaPage(),
          '/novo': (context) => NovoPage(),
          '/edita': (context) => EditaPage(),
          '/login': (context) => LoginPage(),
          '/registro': (context) => RegistroPage(),
        },
        initialRoute: '/login',
      ),
    );
  }
}
