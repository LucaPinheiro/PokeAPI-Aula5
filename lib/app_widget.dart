import 'package:flutter/material.dart';
import 'package:meu_app/pages/home_page.dart';
import 'package:meu_app/pages/second_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/secondPage': (context) =>
            const SecondPage(pokemonData: null), // Adicione isso
      },
    );
  }
}
