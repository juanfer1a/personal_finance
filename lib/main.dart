import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:personal_finance/models/Git.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Gif>> _listGifs;

  Future<List<Gif>> _getGifs() async {
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=m54sspSbn37dd8jj4ZeObEFtdM4yuSvT&limit=10&rating=g"));

    List<Gif> gifs = [];
    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      print(jsonData);
      return gifs;
    } else {
      throw Exception('Fallo la conexion');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Consumir API'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
