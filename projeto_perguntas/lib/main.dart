import 'package:flutter/material.dart';

void main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  
  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 1')
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 2')
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text('Resposta 3')
            )
          ],
        ),
      )
    );
  }

}

class PerguntaApp extends StatefulWidget {
  
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}