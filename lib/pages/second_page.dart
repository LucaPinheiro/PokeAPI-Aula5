import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final dynamic pokemonData;
  final String apiUrl = 'https://pokeapi.co/api/v2/pokemon/';

  const SecondPage({Key? key, required this.pokemonData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Página'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Detalhes do Pokémon:'),
            const SizedBox(height: 20),
            Text('Nome: ${pokemonData['name']}'),
            Text('Tipo: ${pokemonData['types'][0]['type']['name']}'),
            Text('Altura: ${pokemonData['height']}'),
            Text('Peso: ${pokemonData['weight']}'),
            Text('URL Completa: ${apiUrl}' + pokemonData['name']),
          ],
        ),
      ),
    );
  }
}
