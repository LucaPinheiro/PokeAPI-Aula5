import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

import 'package:meu_app/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Header Azul'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final randomNumber = Random().nextInt(10) + 1;
            final apiUrl = 'https://pokeapi.co/api/v2/pokemon/$randomNumber';
            final response = await http.get(
              Uri.parse(apiUrl),
            );
            if (response.statusCode == 200) {
              final pokemonData = jsonDecode(response.body);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    pokemonData: pokemonData,
                  ),
                ),
              );
            } else {
              print('Erro na requisição: ${response.statusCode}');
            }
          },
          child: const Text('Buscar Pokémon Aleatório'),
        ),
      ),
    );
  }
}
