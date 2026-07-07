import 'package:flutter/material.dart';
import 'package:full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardWidth = 300.0;
  final _cardHeight = 100.0;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(flex: 4,child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                bottom: _cardHeight/2,

                child: const RandomImage(),
              ),
              Positioned(
                height: _cardHeight,
                bottom: 0,
                width: _cardWidth,
                child:  const _UpCard()
              )
            ],
          )),
          const Spacer(flex: 6,)
        ],
      )
    );
  }
  }

class _UpCard extends StatelessWidget {
  const _UpCard();

 @override
Widget build(BuildContext context) {
  return Card(
    color: Colors.orange,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Göksu Travertenleri",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.black54),
                    const SizedBox(width: 4),
                    Text(
                      "Dereli, Giresun",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(), 
          const Text(
            "100 TL",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
}