import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget{
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Button Learn"),),

      body:  Column(
        children: [

          TextButton(onPressed: () {},
          
          style: ButtonStyle(backgroundColor: WidgetStateProperty.resolveWith((states){
            if (states.contains(WidgetState.pressed)) {
              return Colors.red;
            } 
            else {
              return Colors.blue;
            } 
          }
          )
          ), 
          
          child: const Text("Text Button Deneme"), 
          ),

          ElevatedButton(onPressed: () {}, child: const Text("Elevated Button Deneme")),

          IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle)),

          FloatingActionButton(
            onPressed: (){},
            child: const Icon(Icons.add),
            ),

          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              shape: const StadiumBorder(),
              shadowColor: Colors.blue,
              padding:const EdgeInsets.all(10),
              
            ),
            onPressed: (){}, 
            child: const Text("Outlined Button Deneme")
            ),

            OutlinedButton.icon(onPressed: () {},
            icon:const Icon(Icons.insert_chart_outlined_outlined) , 
            label: const Text("Verileri Göster")
            ),
        
          InkWell(
            onTap: (){},
            child: const Text("Custom"),
          ),

          Container(
            color: Colors.orangeAccent,
            height: 100,
            margin: const EdgeInsets.only(bottom: 10),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
            ),
            onPressed: () {},
            child: Padding(
            padding: const EdgeInsetsGeometry.only(top: 20, bottom: 20, right: 30,left: 30),
            child: Text("FINISH" ,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.orangeAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700
            ),
            ),
            )
            
            )
        ],
      ),
    );
  }

}