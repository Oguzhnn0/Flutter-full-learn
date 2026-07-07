import 'package:flutter/material.dart';
import 'package:full_learn/product/language/language_items.dart';
import 'package:full_learn/product/welcome_button.dart';

class StatefullLearnView extends StatefulWidget {
  const StatefullLearnView({super.key});

  @override
  State<StatefullLearnView> createState() => _StatefullLearnViewState();
}

class _StatefullLearnViewState extends State<StatefullLearnView> {
  
  int _clickCount = 0;

  void _updateCounter(bool increment){

    if (increment){
      _clickCount = _clickCount + 1;
    }else{
      if (_clickCount >0){
        _clickCount = _clickCount - 1;
      }
      else {
        _clickCount = 0;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeText),),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _deincrementButton(),

          Padding(
            padding: const EdgeInsets.only(left : 10),
            child: _incrementButton(),
          )
        ],
      ),


      body: Column(
        children: [
          Center(
            child: Text(_clickCount.toString(), style: Theme.of(context).textTheme.headlineLarge)
            ),
            const Placeholder(),
            const WelcomeButton(),
        ],
      ),
      
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(onPressed: () {
            _updateCounter(true);
          },
          child: const Icon(Icons.add),
          );
  }

  FloatingActionButton _deincrementButton() {
    return FloatingActionButton(onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
        
        );
  }
}