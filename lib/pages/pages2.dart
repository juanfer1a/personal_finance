import 'package:flutter/material.dart';
import 'package:personal_finance/main.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terminos y condiciones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Terminos y condiciones',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            Text(
              "Terminos y condiciones de ejemplo para que leas los"
              " terminos y condiciones de ejemplo para que puedas aprender como"
              " usarlos",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Acepto los terminos y condiciones'),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
