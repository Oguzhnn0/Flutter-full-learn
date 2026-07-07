import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Learn"),),

      body: Column(
        children: [
          Container(
            color: ColorItems.porsche,
            child: const Text("Porsche"),
          ),
          Container(
            color: ColorItems.sulu,
            child: const Text("Sulu"),
          )
        ],
      )
    );
  }
}

class ColorItems{
  static const Color porsche = Color(0xffEDBF61);

  static const Color sulu = Color.fromARGB(255, 197, 237, 97);
}