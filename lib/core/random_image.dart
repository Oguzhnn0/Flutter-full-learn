import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key});
  final imageUrl = "https://picsum.photos/200";
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, fit: BoxFit.fill,);
  }
}