import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terminos y condiciones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Terminos y condiciones'),
            Text('Terminos y condiciones de ejemplo para que leas'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
            Text('Terminos y condiciones de ejemplo'),
          ],
        ),
      ),
    );
  }
}
