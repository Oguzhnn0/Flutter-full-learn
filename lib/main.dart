import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn/101/app_bar_learn.dart';
import 'package:full_learn/101/button_learn.dart';
import 'package:full_learn/101/card_learn.dart';
import 'package:full_learn/101/color_learn.dart';
import 'package:full_learn/101/column_row_learn.dart';
import 'package:full_learn/101/container_sized_box_learn.dart';
import 'package:full_learn/101/custom_widget_learn.dart';
import 'package:full_learn/101/icon_learn.dart';
import 'package:full_learn/101/image_learn.dart';
import 'package:full_learn/101/indicator_learn.dart';
import 'package:full_learn/101/list_tile_learn.dart';
import 'package:full_learn/101/list_view_builder.dart';
import 'package:full_learn/101/list_view_learn.dart';
import 'package:full_learn/101/navigator_learn.dart';
import 'package:full_learn/101/padding_learn.dart';
import 'package:full_learn/101/page_view_learn.dart';
import 'package:full_learn/101/scaffold_learn.dart';
import 'package:full_learn/101/stack_learn.dart';
import 'package:full_learn/101/statefull_learn.dart';
import 'package:full_learn/101/statefull_life_cycle_learn.dart';
import 'package:full_learn/101/stateless_learn.dart';
import 'package:full_learn/101/text_field_learn.dart';
import 'package:full_learn/101/text_learn_view.dart';
import 'package:full_learn/202/model_learn_view.dart';
import 'package:full_learn/202/tab_learn.dart';
import 'package:full_learn/demos/color_demos.dart';
import 'package:full_learn/demos/color_life_cycle_view.dart';
import 'package:full_learn/demos/my_collections.dart';
import 'package:full_learn/demos/my_note_demos_app.dart';
import 'package:full_learn/demos/stack_demo_view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Deneme App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(

        tabBarTheme: const TabBarThemeData(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.deepOrange,
          indicatorAnimation: TabIndicatorAnimation.elastic,
        ),

        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),

        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Colors.deepOrange
        ),

        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
        ),

        inputDecorationTheme: const InputDecorationTheme(

          border: OutlineInputBorder(),
          iconColor: Colors.orange,
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orangeAccent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          actionsIconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
          ),

        )

      ),
      /*theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),*/
      home: const ModelLearnView(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: .center,
          children: [
            const Text('Habu Gadar Bastın:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        label: Row(
          children: [
            const Icon(Icons.add_box_outlined),
            Text("  "),
            Text("Sayıyı Artırmak İçin Tıkla")
          ],
        )
      ),
    );
  }
}
*/
