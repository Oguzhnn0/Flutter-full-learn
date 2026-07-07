import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.mainColor,
        title: const Text(
          "Container-Sized Box Learn",

          style: TextStyle(color: MyColors.mainTextColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(width: 200, height: 200, child: Text("a" * 400)),

          SizedBox.square(dimension: 150, child: Text("b" * 400)),

          Container(
            //height: 50,
            //width: 50,
            constraints: const BoxConstraints(
              maxHeight: 150,
              maxWidth: 150,
              minHeight: 50,
              minWidth: 50,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            decoration:ProjectUtility.containerDecoration,

            child: Text(
              "aa" * 45,

              style: const TextStyle(color: MyColors.mainTextColor),
            ),
          ),
        ],
      ),
    );
  }
}

class MyColors {
  static const Color mainColor = Colors.deepOrangeAccent;
  static const Color mainTextColor = Color.fromARGB(255, 255, 242, 215);
  static const Color borderColor = Color.fromARGB(255, 192, 99, 0);
  static const Color secondColor = Color.fromARGB(255, 255, 1, 1);
  static const Color thirdColor = Color.fromARGB(255, 0, 140, 255);
}

class ProjectUtility{
  static final BoxDecoration containerDecoration= BoxDecoration(
              color: MyColors.mainColor,
              border: Border.all(width: 15, color: MyColors.borderColor),
              borderRadius:  BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 25,
                  offset: Offset(5, 10),
                ),
              ],
              gradient: const LinearGradient(
                colors: [MyColors.thirdColor, MyColors.secondColor],
              ),
            );
}
class ProjectContainerDecoration extends BoxDecoration{
  ProjectContainerDecoration() : super(
              color: MyColors.mainColor,
              border: Border.all(width: 15, color: MyColors.borderColor),
              borderRadius:  BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 25,
                  offset: Offset(5, 10),
                ),
              ],
              gradient: const LinearGradient(
                colors: [MyColors.thirdColor, MyColors.secondColor],
              ),
              );
}
