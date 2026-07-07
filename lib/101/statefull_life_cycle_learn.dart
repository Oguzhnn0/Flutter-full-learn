import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});

  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {

  String _message = "";

  late final bool _isOdd = widget.message.length.isOdd;

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
  super.didUpdateWidget(oldWidget);
  if (oldWidget.message != widget.message) {
    _message = widget.message;
    _nameOddOrEven();
    setState(() {});
  }
}

  @override
  void initState() {
    super.initState();
     _message = widget.message;

     _nameOddOrEven() ;
}

  @override
  void dispose(){
    super.dispose();

    _message = "";
  }

  String _nameOddOrEven() => _message = _isOdd ? _message += " Çift" :_message += " Tek" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(_message),
    ),
    
    body: Center(
      child: _isOdd
      ?ElevatedButton(onPressed: () {}, child: Text(_message))
      : TextButton(onPressed: () {}, child: Text(_message)),
    )
    );
  }
}