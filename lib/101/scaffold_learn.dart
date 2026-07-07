import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget{
  const ScaffoldLearnView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Center(child: Text("Scaffold Samples")) ,
      ),

      body: const Text("Merhaba Dünya!"),
      backgroundColor: Colors.orange,

      extendBody: true,

      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(context: context, builder: (context)=>Container(
          height: 200,
          width: double.infinity,
                    
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 255, 240, 221)
            ),

          child: Column(
            children: [
              Center(child: Title(color: Colors.black, child: const Text("Flutter Demo App",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              ),
              ),
              ),
            ],
          )
        )
        );
      },
      child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      
      drawer: const Drawer(),

      bottomSheet: BottomSheet(onClosing: () {},
       builder: (context){
        return const Text("Flutter");
       },
       enableDrag: false,),

      bottomNavigationBar: BottomNavigationBar(items:const [
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Keşfet"),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin_circle_rounded),label: "Profilim")
      ]),
    );
  }
}