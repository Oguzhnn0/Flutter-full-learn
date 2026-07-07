import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),


      body: ListView(
        children: [
          FittedBox(
            child: Text("Merhaba",
            style:Theme.of(context).textTheme.headlineLarge,),
          ),

          Container(height: 300,color: Colors.red,),

          const Divider(),

          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Container(width: 200,color: Colors.green,),
              Container(width: 200,color: Colors.white,),
              Container(width: 200,color: Colors.black,),
              Container(width: 200,color: Colors.blue,),
              ]
            ),
          ),

          IconButton(onPressed: (){}, icon: const Icon(Icons.clear)),

          //--------------------------------------------------------------

          FittedBox(
            child: Text("Merhaba",
            style:Theme.of(context).textTheme.headlineLarge,),
          ),

          Container(height: 300,color: Colors.red,),

          const Divider(),

          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Container(width: 200,color: Colors.green,),
              Container(width: 200,color: Colors.white,),
              Container(width: 200,color: Colors.black,),
              Container(width: 200,color: Colors.blue,),
              ]
            ),
          ),

          IconButton(onPressed: (){}, icon: const Icon(Icons.clear)),
          const _ListView() 
        ],
      ),     
    );
  }
}

class _ListView extends StatefulWidget {
  const _ListView();

  @override
  State<_ListView> createState() => __ListViewState();
}

class __ListViewState extends State<_ListView> {
  @override

  void initState(){
    super.initState();
    print("merhaba");
  }

  void dispose(){
    super.dispose();
    print("bye");
  }
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}