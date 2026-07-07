import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
 IconLearnView({super.key});
  final IconSize iconSize = IconSize();
  final IconColors iconColor = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Icon Learn"),
      ),
      body: Column(
        children: [
          
          IconButton(onPressed: () {}, icon: Icon(
            Icons.message_outlined,
            color: iconColor.iconRed,
            size: iconSize.iconSmall,
          )
          ),
          
          IconButton(onPressed: () {}, icon: Icon(
            Icons.message_outlined,
            color: IconColors().iconRed,
            size: IconSize().iconSmall,
          )
          ),
          
        ],
      ),
    );
  }
}

class IconSize {
  final double iconSmall = 40;
}

class IconColors{
  final Color iconRed = Colors.red;
}