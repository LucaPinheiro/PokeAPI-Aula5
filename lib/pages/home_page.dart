import 'package:flutter/material.dart';
import 'package:meu_app/widgets/botao_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BotaoWidget(
          texto: "Mudar páginaa",
          funcao: () async {
            var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/3');
            var response = http.get(url);
            print(response);
          },
        ),
      ),
    );
  }
}
