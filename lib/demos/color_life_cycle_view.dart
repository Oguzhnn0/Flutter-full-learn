import 'package:flutter/material.dart';
import 'package:full_learn/demos/color_demos.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {

  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
            IconButton(
              onPressed:_changeBackgroundColorOnTap,
              icon: const Icon(Icons.clear))
          ],
        ),

      body: Column( 
        children: [
          const Spacer(),
          Expanded(child: ColorDemosLearnView(initialColor: _backgroundColor))
        ],
      ),
    );
  }
  void _changeBackgroundColorOnTap(){
     setState(() {
     _backgroundColor = Colors.pink;
      }
    );
   }
}

