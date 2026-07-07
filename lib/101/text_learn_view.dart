import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget{
  TextLearnView({super.key});

  final String name = "Oğuzhan";

  final ProjectsKeys keys = ProjectsKeys();

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(("Flutter " *15) ,
            maxLines: 2,
            overflow:TextOverflow.ellipsis,
            
            style: TextStyle(
              fontSize: 30,
              wordSpacing: 3,
              letterSpacing: 3,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Colors.orange.shade700,
              ),
            ),

            Text( ("$name " *10) ,
            maxLines: 2,
            overflow:TextOverflow.ellipsis,
            
            style: ProjectStyle.welcomeStyle,

            ),

             Text(("Dart " *7) ,
            maxLines: 2,
            overflow:TextOverflow.ellipsis,
            
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.blue,
            )
            ),

            Text(keys.welcome,
            
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.green,
            ) ,
            )
          ],
        )),
    );
  }

}

class ProjectStyle {
  static const TextStyle welcomeStyle = TextStyle(
    fontSize: 30,
    wordSpacing: 3,
    letterSpacing: 3,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    color: Colors.orange,
  );
}

class ProjectsKeys {

  final String welcome = "Merhaba!";
}