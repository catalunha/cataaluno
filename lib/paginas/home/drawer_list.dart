import 'package:aluno/paginas/login/login_pag.dart';
import 'package:aluno/uteis/navegacao.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 200,
        color: Colors.white,
        child: ListView(
          children: <Widget>[
//            UserAccountsDrawerHeader(
//              accountName: FutureBuilder<User>(
//                future: User.get(),
//                builder: (context, snapshot) {
//                  if (snapshot.hasData) {
//                    final user = snapshot.data;
//                    return Text(user.nome);
//                  }
//                  return Text("");
//                },
//              ),
//              accountEmail: FutureBuilder<User>(
//                future: User.get(),
//                builder: (context, snapshot) {
//                  if (snapshot.hasData) {
//                    final user = snapshot.data;
//                    return Text(user.email);
//                  }
//                  return Text("");
//                },
//              ),
//              currentAccountPicture: CircleAvatar(
//                backgroundImage: NetworkImage(
//                    "https://cdn.iconscout.com/icon/free/png-256/avatar-372-456324.png"),
//              ),
//            ),
            Text('aa'),
            ListTile(
              onTap: () {
                print("Turmas");
              },
              title: Text("Turmas"),
              leading: Icon(Icons.contact_mail),
            ),
            ListTile(
              onTap: () {
                print("Configurações");
              },
              title: Text("Configurações"),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              onTap: () {
                print("Softwares");
              },
              title: Text("Softwares"),
              leading: Icon(Icons.add_to_queue),
            ),
            ListTile(
              onTap: () {
                print("Ajuda");
              },
              title: Text("Ajuda"),
              leading: Icon(Icons.help),
            ),
            ListTile(
              onTap: () {
                _logout(context);
                print("Sair");
              },
              title: Text("Sair"),
              leading: Icon(Icons.close),
            )
          ],
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    print("Logout");
    pop(context);
    pushReplacement(context, LoginPag());
  }
}
