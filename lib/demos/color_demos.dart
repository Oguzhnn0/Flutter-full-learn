import 'package:flutter/material.dart';

class ColorDemosLearnView extends StatefulWidget {
  const ColorDemosLearnView({super.key, this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemosLearnView> createState() => _ColorDemosLearnViewState();
}

class _ColorDemosLearnViewState extends State<ColorDemosLearnView> {
  
  Color? _backgroundColor;
  
  @override
  
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosLearnView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.initialColor != _backgroundColor && widget.initialColor !=null){
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor (Color color){
    setState(() {
      _backgroundColor = color ;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,

      bottomNavigationBar: BottomNavigationBar(

        onTap: _NavbarButtonOnTap,

        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.color_lens_outlined), label: ColorDemosNavBarButtonText.kirmizi),
        BottomNavigationBarItem(icon: Icon(Icons.color_lens_outlined), label: ColorDemosNavBarButtonText.sari),
        BottomNavigationBarItem(icon: Icon(Icons.color_lens_outlined), label: ColorDemosNavBarButtonText.yesil),
      ]),
    );
  }

  void _NavbarButtonOnTap(int value) {
    if (value == ChancingColors.red.index){
      changeBackgroundColor(Colors.red);
    }else if (value == ChancingColors.yellow.index){
      changeBackgroundColor(Colors.yellow);
    }else{
      changeBackgroundColor(Colors.green);
    }
  }
}

enum ChancingColors {
  red,
  yellow,
  green
}

class ColorDemosNavBarButtonText {

  static const String kirmizi = "KIRMIZI";
  static const String sari = "SARI";
  static const String yesil = "YEŞİL";
  
}