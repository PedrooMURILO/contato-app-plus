import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Nome",
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "E-mail",
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder()
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
              child: Text("Entrar")
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Login")
            ),
          ],
        )
      ),
    );
  }
}