import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Learn"),),

      body: Column(
        children: [
          Card(
            margin: ProjectMargin().cardMarginAll,

            child: const SizedBox(height: 100, width: 200,child: Center(child: Text("data")),),
          ),
           const _CustomCard( 
            SizedBox(
              height: 100, 
              width: 200,
              child: Center(
                child: Text("data")
                ),
              )
            ),
             const _CustomCard( 
            SizedBox(
              height: 100, 
              width: 200,
              child: Center(
                child: Text("data")
                ),
              )
            ),
        ],
      ),
    ) ;
    
    }
}

class _CustomCard extends StatelessWidget {
 const _CustomCard(this.child);
  final Widget child; 
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin().cardMarginAll,
      child: child,
    );
 }
}

class ProjectMargin {
  final cardMarginAll = const EdgeInsets.all(10);
}