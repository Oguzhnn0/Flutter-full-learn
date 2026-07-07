import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    const String getImageUrl = "https://blog.jollytur.com/wp-content/uploads/2025/09/25647830251-scaled.jpg";
    return Scaffold(
      appBar: AppBar(),

      body:Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: PngImage(name: ImageItems().myPhoto2)
          ),
          SizedBox(
            height: 400,
            width: 400,
            child: Image.asset(ImageItems().myPhoto,
            fit: BoxFit.cover,),
          ),
           SizedBox(
            height: 100,
            width: 100,
            child: Image.network(
              getImageUrl,
              errorBuilder: (context, error, stackTrace) => const Text("Resim yüklenemedi", style: TextStyle(fontSize: 15),)//PngImage(name: ImageItems().myPhoto2),
              )
          ),
        ],
      ) ,
    );
  }
}

class ImageItems{
  final String myPhoto = "assets/png/abc.png";
  final String myPhoto2= "def";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover,);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}