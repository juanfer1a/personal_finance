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
      child: //Nombre()
          Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Nombre(),
          SizedBox(
            height: 10.0,
          ),
          campoUsuario(),
          campoContrasena(),
          SizedBox(
            height: 10.0,
          ),
          botonEnter(),
        ],
      ),
    ),
  );
}

Widget Nombre() {
  return Text(
    'Sign in',
    style: TextStyle(
        color: Colors.orangeAccent,
        fontSize: 40.0,
        fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        decoration: InputDecoration(
            hintText: "User", fillColor: Colors.white, filled: true)),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password", fillColor: Colors.white, filled: true)),
  );
}

Widget botonEnter() {
  return TextButton(
    onPressed: () {},
    child: Text('Enter'),
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.orange,
      padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 8.0),
      textStyle: const TextStyle(fontSize: 20),
    ),
  );
}
