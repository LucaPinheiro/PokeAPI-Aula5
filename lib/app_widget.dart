import 'package:flutter/material.dart';
import 'package:meu_app/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: MaterialApp(
        title: 'Meu App',
        home: HomePage(),
      ),
    );
  }
}
