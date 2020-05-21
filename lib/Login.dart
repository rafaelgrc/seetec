import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Login"),
      ),
      body: Center(
          child: Text(
        "Logado com Sucesso!!!", style: TextStyle(color: Colors.blue, fontSize: 25),
      )),
    );
  }
}
