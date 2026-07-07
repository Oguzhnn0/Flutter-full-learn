import 'package:flutter/material.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: const Column(
        children: [
          Expanded(flex: 3,child: Row(
            children: [
              Expanded(child: FlutterLogo()),
              Expanded(child: FlutterLogo()),
              Expanded(child: FlutterLogo()),
              Expanded(child: FlutterLogo()),
            ],
          )
          ),

          Expanded(flex: 1,child: FlutterLogo()),

          Expanded(flex: 2,child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
              FlutterLogo(),
            ],
          )
          ),
          Expanded(flex: 1,child: FlutterLogo()),
          Expanded(flex: 4,child: FlutterLogo()),
          SizedBox(
            width: ProjectCardHeight.cardHeight,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(flex: 2,child: FlutterLogo()),
                Expanded(flex: 1,child: FlutterLogo()),
                Expanded(flex: 3,child: FlutterLogo()),
                Expanded(flex: 2,child: FlutterLogo()),
              ],
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}  class ProjectCardHeight {
  static const double cardHeight = 100;
}