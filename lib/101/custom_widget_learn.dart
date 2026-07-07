import 'package:flutter/material.dart';

class CustomWidgetLearnView extends StatelessWidget {
   const CustomWidgetLearnView({super.key});
   final buttonText = "Food";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width ,
              child: CustomFoodButton(buttonText: buttonText, 
              onPressed: () {},)),
          )
          ),

          const SizedBox( width: 100,),

          SizedBox(
            width: 120 ,
            child: CustomFoodButton(
              buttonText: buttonText, 
              onPressed: () {},
             )
          ),
        ],
      ),
    );
  }
}

mixin _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget with _ColorUtility, _PaddingUtility{
   CustomFoodButton({super.key, required this.buttonText, required this.onPressed,});
   final String buttonText;
   final void Function() onPressed ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        shape: const StadiumBorder()
      ),
      onPressed: onPressed, 
      child: Padding(
        padding: normal2xPadding,
        child:  Text(buttonText,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: whiteColor,
          fontWeight: FontWeight.bold,
          ),
        ),
      ),
     );
  }
}

mixin _ColorUtility {
  final Color blackColor = Colors.black ;
  final Color redColor = Colors.red ;
  final Color whiteColor = Colors.white ;
}