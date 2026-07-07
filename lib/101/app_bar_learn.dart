import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget{
  const AppBarLearnView({super.key});
  final String uygulamaAdi = "App Bar Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orangeAccent,
        //elevation: 0,
        //systemOverlayStyle: SystemUiOverlayStyle.light,
        //actionsIconTheme: const IconThemeData(color: Colors.orangeAccent),
        //centerTitle: true,
        automaticallyImplyLeading: false,
        title: Title(color: Colors.black, child: Text(uygulamaAdi,
              style: const TextStyle(
                //fontSize: 25,
                //fontWeight: FontWeight.bold,
                //fontStyle: FontStyle.italic,
              ),
              ),
              ),
        //leading: const Icon(Icons.arrow_back),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.format_list_bulleted_sharp)),
          
          ],
      ),

      body: const Center(child: CircularProgressIndicator(
        color: Colors.orangeAccent,
      ),
      ),
    );
  }
}