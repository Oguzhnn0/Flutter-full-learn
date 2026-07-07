import 'package:flutter/material.dart';

class MyCollections extends StatefulWidget {
  const MyCollections({super.key});

  @override
  State<MyCollections> createState() => _MyCollectionsState();
}

class _MyCollectionsState extends State<MyCollections> {

  late final List<CollectionModel> _items ;
  @override

  void initState(){
    super.initState();
    _items= CollectionItems().items;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, int index){
          return CategoryCard(model: _items[index]);
        }),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: PaddingUtility().paddingTop,
        child: SizedBox(
          height: 300,
          child: Padding(
            padding: PaddingUtility().paddingAll,
            child: Column(
              children: [
                Expanded(child: Image.asset(_model.imagePath)),
                Padding(
                  padding: PaddingUtility().paddingTop,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_model.title,),
                      Text("${_model.price}"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath,required this.price,required this.title});
}

class PaddingUtility {
  final EdgeInsets paddingTop = const EdgeInsets.only(top: 10);
  final EdgeInsets paddingAll = const EdgeInsets.all(10);
  final EdgeInsets paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    // Başına items = ekleyerek havada kalan listeyi değişkene bağladık:
    items = [
      CollectionModel(imagePath: "assets/png/image_collection.png", price: 3.4, title: "Deneme1"),
      CollectionModel(imagePath: "assets/png/image_collection.png", price: 3.4, title: "Deneme2"),
      CollectionModel(imagePath: "assets/png/image_collection.png", price: 3.4, title: "Deneme3"),
      CollectionModel(imagePath: "assets/png/image_collection.png", price: 3.4, title: "Deneme4"),
    ];
  }
}