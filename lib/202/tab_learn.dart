import 'dart:ffi' hide Size;

import 'package:flutter/material.dart';

class TabLearnView extends StatefulWidget {
  const TabLearnView({super.key});

  @override
  State<TabLearnView> createState() => _TabLearnViewState();
}

class _TabLearnViewState extends State<TabLearnView>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _MyTabviews.values.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabviews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabviews.menu.index);
          },
          backgroundColor: Colors.orange,
          shape: const CircleBorder(),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),

          child: _BottomAppBarTabBar(tabController: _tabController),
        ),

        appBar: AppBar(bottom: _AppBarTabBar(tabController: _tabController)),

        body: _TabBarView(tabController: _tabController),
      ),
    );
  }
}

class _BottomAppBarTabBar extends StatelessWidget {
  const _BottomAppBarTabBar({required TabController tabController})
    : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      //indicatorColor: Colors.orange,
      controller: _tabController,
      tabs: _MyTabviews.values.map((e) => Tab(text: e.name)).toList(),
    );
  }
}

class _AppBarTabBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarTabBar({required TabController tabController})
    : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.white,
      controller: _tabController,
      tabs: _MyTabviews.values.map((e) => Tab(text: e.name)).toList(),
    ); // TabBar
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TabBarView extends StatelessWidget {
  const _TabBarView({super.key, required TabController tabController})
    : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.orange),
        Container(color: Colors.black),
      ],
    );
  }
}

enum _MyTabviews { menu, settings, profiles, favourites }

extension _MyTabViewsExtension on _MyTabviews {}
