import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodels/contato_viewmodel.dart';

class ListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ContatoViewModel>(context, listen: true);

    return Scaffold(
      appBar: AppBar(title: Text("Contatos")),
      body: ListView(
        children:
            viewModel.contatos
                .map(
                  (contato) => Dismissible(
                    key: Key(contato.id),
                    onDismissed: (_) => viewModel.delete(contato.id),
                    background: Container(color: Colors.red),
                    child: ListTile(
                      onTap:
                          () => Navigator.pushNamed(
                            context,
                            '/edita',
                            arguments: contato,
                          ),
                      leading: CircleAvatar(),
                      title: Text(contato.nome),
                      subtitle: Text(contato.email),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                )
                .toList(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/novo'),
        label: Text("Novo"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
