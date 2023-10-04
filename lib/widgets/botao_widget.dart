import 'package:flutter/material.dart';
import 'package:meu_app/pages/second_page.dart';

class BotaoWidget extends StatelessWidget {
  final String texto;
  final Function() funcao;
  const BotaoWidget({Key? key, required this.texto, required this.funcao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
      },
      child: const Text('Mudar página'),
    );
  }
}
