import "package:flutter/material.dart";

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Padding Learn"),),
    
      body: Padding(
        padding: ProjectPadding().verticalPadding,
        child: Column(
        children: [
          Padding(
            padding: ProjectPadding().verticalPadding + ProjectPadding().allPadding,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: ProjectPadding().verticalPadding,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.red
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding{
  final verticalPadding = const EdgeInsets.symmetric(horizontal: 10);
  final allPadding = const EdgeInsets.all(5);
}