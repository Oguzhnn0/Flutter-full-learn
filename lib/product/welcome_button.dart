import 'package:flutter/material.dart';
import 'package:full_learn/product/language/language_items.dart';

class WelcomeButton extends StatefulWidget {
  const WelcomeButton({super.key});

  @override
  State<WelcomeButton> createState() => _WelcomeButtonState();
}

class _WelcomeButtonState extends State<WelcomeButton> {

  final String _welcomeMessage = LanguageItems.welcomeText ;
  int _customCount = 0;

  void _updateCounter(){
    setState(() {
      ++_customCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _updateCounter, child: Text("$_welcomeMessage $_customCount"));
  }
}