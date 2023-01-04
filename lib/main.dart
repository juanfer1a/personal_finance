//import 'dart:js';
import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

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
  bool _suscrito = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: (() {
                  _mostrarAlerta(context);
                  print('Funciona');
                }),
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.grey)),
                child: Text(
                  _suscrito ? "Cancelar suscripcion" : "Suscribirme",
                  style: TextStyle(fontSize: 20.0),
                )),
            const SizedBox(
              height: 60.0,
            ),
            Text(
              _suscrito ? "Suscrito" : "No suscrito",
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: Text('Hola'),
            content: Text('El mejor'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _suscrito = !_suscrito;
                    });
                    Navigator.pop(context);
                  },
                  child: Text('Si'))
            ],
          );
        }));
  }
}
