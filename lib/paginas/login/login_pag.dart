//import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:aluno/firebase/firebase_autenticacao.dart';
import 'package:aluno/paginas/home/home_pag.dart';
import 'package:aluno/uteis/navegacao.dart';
import 'package:flutter/material.dart';
//import 'package:aluno/firebase/firebase-autenticacao.dart';

class LoginPag extends StatefulWidget {
  @override
  _LoginPagState createState() => _LoginPagState();
}

class _LoginPagState extends State<LoginPag> {
  final _tEmail = TextEditingController(text: 'aluno1@gmail.com');
  final _tSenha = TextEditingController(text: 'aluno1');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
//    _remoteMsg(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CATA'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: _body(),
      ),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Text('Email:'),
          TextFormField(
            controller: _tEmail,
          ),
          Text('Senha:'),
          TextFormField(
            controller: _tSenha,
          ),
          Container(
            child: RaisedButton(
              child: Text('Acessar o aplicativo'),
              onPressed: () {
                _onClickLogin(context);
              },
            ),
          )
        ],
      ),
    );
  }

  void _onClickLogin(context) async {
    final email = _tEmail.text;
    final senha = _tSenha.text;
    print('Informados. Email $email. Senha $senha');

    final service = FirebaseAutenticacao();
    final response = await service.login(email, senha);
    if (response) {
      print('Login com sucesso. Vai para home');
      pushReplacement(context, HomePag());
    } else {
      print('Erro no login.');
    }
  }

//  void _remoteMsg(context) {
//    RemoteConfig.instance.then((remoteConfig) {
//      remoteConfig.setConfigSettings(RemoteConfigSettings(debugMode: true));
//      try {
//        remoteConfig.fetch(expiration: const Duration(minutes: 1));
//        remoteConfig.activateFetched();
//      } catch (error) {
//        print("Remote Config: $error");
//      }
//      final mensagem = remoteConfig.getString("msg2");
//      print('Mensagem: $mensagem');
//    });
//  }
}
