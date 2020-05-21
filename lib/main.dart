import 'package:flutter/material.dart';
import 'Login.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  String _instrucao = "Digite login e senha";

  void limparCampos() {
    loginController.text = "";
    senhaController.text = "";
  }

  _fazerLogin() {
    if (loginController.text == 'admin' && senhaController.text == '123') {
      _logadoSucesso();
      // limparCampos();

    } else {
      setState(() {
        _instrucao = "Login ou senha incorreto(a)(s)";
      });
      // limparCampos();
    }
  }

  void _logadoSucesso() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                limparCampos();
              })
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Icon(
                Icons.person_outline,
                size: 150,
                color: Colors.blue,
              ),
            ),
            TextField(
              controller: loginController,
              decoration: InputDecoration(
                  labelText: "Login",
                  labelStyle: TextStyle(color: Colors.blue)),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 70,
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Logar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _fazerLogin,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              _instrucao,
              style: TextStyle(fontSize: 22, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
