import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "Mi App",
      home: const Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Cuerpo(),
    );
  }
}

Widget Cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://wallpapershome.com/images/pages/pic_v/11090.jpg"),
          fit: BoxFit.cover),
    ),
    child: Center(
      child: Column(
        children: <Widget>[Nombre(), Nombre()],
      ),
    ),
  );
}

Widget Nombre() {
  return Text(
    'Sign in',
    style: TextStyle(
        color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
  );
}
