import 'package:flutter/material.dart';
import 'package:quiz/perguntas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo de Perguntas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 76, 0, 255)),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(155, 0, 4, 24),
        appBar: AppBar(title: Text("Perguntas Espaciais 🚀🪐")),
        body: PaginaInicial(),
      ),
    );
  }
}

class PaginaInicial extends StatefulWidget{

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {

Questao questao = Questao();


  var indicePergun = 0;

  void responder(){
    print("respondido $indicePergun");
    setState(() {
         indicePergun++; 
    });
  }

  @override
  Widget build(BuildContext context) {

  var questao = Questao();
  var questoes = questao.getQuestoes();

    return Column(
        children: [
          Center(
          child: (Text(questoes[indicePergun].pergunta)),
        ),
  
          ElevatedButton(
          child: Text(questoes[indicePergun].respostas[0]),
          onPressed: responder,
          ),
           ElevatedButton(
          child: Text(questoes[indicePergun].respostas[1]),
          onPressed: responder,
          ),
           ElevatedButton(
          child: Text(questoes[indicePergun].respostas[2]),
          onPressed: responder,
          ),
        ],

    );
  }
}
