import 'package:flutter/material.dart';
import 'package:meu_app/widgets/botao_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key})
      : super(key: key); // Correção na definição do construtor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoWidget(
              texto: "voltar",
              funcao: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
