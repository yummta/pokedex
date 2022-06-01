// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    _getPokemons();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: const Center(child: Text('...')),
    );
  }

  _getPokemons() async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/');
    print(response);
  }
}
