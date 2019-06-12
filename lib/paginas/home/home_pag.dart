import 'package:aluno/paginas/home/drawer_list.dart';
import 'package:flutter/material.dart';


class HomePag extends StatefulWidget {
  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá...'),
      ),
      body: Container(
        color: Colors.yellow,
      ),
      drawer: DrawerList(),
    );
  }
}
