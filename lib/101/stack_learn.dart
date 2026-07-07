import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: 250,
          color: Colors.red,
        ),

        Padding(
          padding: const EdgeInsets.only(top:100),
          child: Container(
            height: 250,
            color: Colors.blueGrey,
          ),
        ),
        Positioned.fill(
          top: 20,
          child: Container(
            color: Colors.blue,
            ), // Container // Positioned.fill
          ),
        Positioned(
          bottom: 0,
          height: 100,
          width: 25,
          child: Container(
            color: Colors.green,
           ), // Container // Positioned
          )

      ],
    );
  }
}