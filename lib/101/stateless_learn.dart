import "package:flutter/material.dart";

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateless Learn"),),

      body:Column(
        children: [
          const TitleTextWidget(title: "Oğuzhan") ,
          _emptyBox(),
          const TitleTextWidget(title: "Oğuzhan1") ,
          _emptyBox(),
          const TitleTextWidget(title: "Oğuzhan2") ,
          _emptyBox(),
          const TitleTextWidget(title: "Oğuzhan3") ,
          _emptyBox(),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ) ,
    );
  }

 
  SizedBox _emptyBox() => const SizedBox(height: 20,);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,        
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(10),
        ),
      );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium,);
    }
  }