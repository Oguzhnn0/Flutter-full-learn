import 'package:flutter/material.dart';
import 'package:full_learn/101/icon_learn.dart';
import 'package:full_learn/101/stack_learn.dart';
import 'package:full_learn/core/random_image.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentIndex = 0;

  void _updatePageIndex (int index){
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          //geri
        FloatingActionButton(onPressed: () {
          _pageController.previousPage(duration:_DurationUtility.durationLow, curve: _CurvesUtility.fastOutSlowIn);
        }, child: const Icon(Icons.chevron_left),

          ),

        Padding(
          padding: const EdgeInsets.only(left: 10),
          //ileri
          child: FloatingActionButton(onPressed: () {
             _pageController.nextPage(duration:_DurationUtility.durationLow, curve: _CurvesUtility.fastOutSlowIn); 
          }, child: const Icon(Icons.chevron_right),
            ),
        ),
        Text(_currentIndex.toString())
        ],
      ),
      appBar: AppBar(),

      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
        const RandomImage(),
        IconLearnView(),
        const StackLearnView()
      ],),
    );
  }
}

class _DurationUtility {
  static const durationLow = Duration(milliseconds: 500);
}

class _CurvesUtility{
  static const fastOutSlowIn =Curves.fastOutSlowIn;
}