import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _message = "Cliqu bo botão para gera sua frase do dia!";

  List<String> messages = [
    "Quanto mais estudos, mais conhecimento. Quanto mais conhecimento, mais sabedoria para mudar o mundo. ",
    "Acreditar que você pode já é meio caminho andado.",
    "O lucro dos nossos estudos é que nos tornamos melhores e mais sábios.",
    "Não pare até se orgulhar de você!",
    "O futuro pertence àqueles que acreditam na beleza de seus sonhos.",
    "Não importa o quanto você demore, desde que você não pare!",
    "Cada dia de estudo é um passo a menos no caminho em rumo aos seus sonhos.",
    "O conhecimento é capaz de quebrar todas as barreiras e te levar mais longe do que você jamais imaginou.",
  ];
  void _generateText() {
    int i = Random().nextInt(messages.length);
    setState(() {
      _message = messages[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Frases Aleatórias', textAlign: TextAlign.center)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/image/logo.png",
                  width: 300,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(_message,
                        style: const TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () => _generateText(),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                      "Nova Frase",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
