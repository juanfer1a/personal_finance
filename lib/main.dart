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
      appBar: AppBar(
        title: const Text('TKT'),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: ElevatedButton(
          child: Row(children: [Icon(Icons.access_time), Text('Now')]),
          onPressed: (() {
            var t = DateTime.now();
            print('Hola Juanfer son las ${t}');
          }),
        ),
      ),
    );
  }
}
