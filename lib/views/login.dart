import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              onPressed: () => Navigator.pushNamed(context, '/lista'),
              child: Text("Login")
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/registro'),
              child: Text("Registre-se")
            ),
          ],
        )
      ),
    );
  }
}