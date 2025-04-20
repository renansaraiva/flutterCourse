import 'package:flutter/material.dart';

void main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {

  final perguntaSelecionada = 0;

  void responder() {
    // perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder
            )
          ],
        ),
      )
    );
  }
}