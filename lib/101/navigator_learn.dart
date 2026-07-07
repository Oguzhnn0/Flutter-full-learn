import 'package:flutter/material.dart';
import 'package:full_learn/101/image_learn.dart';
import 'package:full_learn/101/navigate_detail_learn.dart';

class NavigatorLearnView extends StatefulWidget {
  const NavigatorLearnView({super.key});

  @override
  State<NavigatorLearnView> createState() => _NavigatorLearnViewState();
}

class _NavigatorLearnViewState extends State<NavigatorLearnView>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
     isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                context,
                NavigateDetailLearn(isOk: selectedItems.contains(index),),
              );

              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}
